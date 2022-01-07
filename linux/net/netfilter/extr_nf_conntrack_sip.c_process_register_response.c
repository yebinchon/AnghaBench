
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nf_ct_sip_master {unsigned int register_cseq; } ;
struct nf_conn {TYPE_3__* tuplehash; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef int __be16 ;
struct TYPE_4__ {int u3; } ;
struct TYPE_5__ {TYPE_1__ dst; } ;
struct TYPE_6__ {TYPE_2__ tuple; } ;


 int CTINFO2DIR (int) ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int SIP_HDR_CONTACT ;
 int SIP_HDR_EXPIRES ;
 scalar_t__ ct_sip_get_header (struct nf_conn*,char const*,int ,unsigned int,int ,unsigned int*,unsigned int*) ;
 int ct_sip_parse_header_uri (struct nf_conn*,char const*,unsigned int*,unsigned int,int ,int*,unsigned int*,unsigned int*,union nf_inet_addr*,int *) ;
 int ct_sip_parse_numerical_param (struct nf_conn*,char const*,unsigned int,unsigned int,char*,int *,int *,unsigned int*) ;
 scalar_t__ ct_sip_parse_transport (struct nf_conn*,char const*,unsigned int,unsigned int,int *) ;
 int flush_expectations (struct nf_conn*,int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_helper_log (struct sk_buff*,struct nf_conn*,char*) ;
 int nf_inet_addr_cmp (int *,union nf_inet_addr*) ;
 struct nf_ct_sip_master* nfct_help_data (struct nf_conn*) ;
 scalar_t__ refresh_signalling_expectation (struct nf_conn*,union nf_inet_addr*,int ,int ,unsigned int) ;
 unsigned int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static int process_register_response(struct sk_buff *skb, unsigned int protoff,
         unsigned int dataoff,
         const char **dptr, unsigned int *datalen,
         unsigned int cseq, unsigned int code)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 struct nf_ct_sip_master *ct_sip_info = nfct_help_data(ct);
 enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);
 union nf_inet_addr addr;
 __be16 port;
 u8 proto;
 unsigned int matchoff, matchlen, coff = 0;
 unsigned int expires = 0;
 int in_contact = 0, ret;
 if (ct_sip_info->register_cseq != cseq)
  return NF_ACCEPT;

 if (code >= 100 && code <= 199)
  return NF_ACCEPT;
 if (code < 200 || code > 299)
  goto flush;

 if (ct_sip_get_header(ct, *dptr, 0, *datalen, SIP_HDR_EXPIRES,
         &matchoff, &matchlen) > 0)
  expires = simple_strtoul(*dptr + matchoff, ((void*)0), 10);

 while (1) {
  unsigned int c_expires = expires;

  ret = ct_sip_parse_header_uri(ct, *dptr, &coff, *datalen,
           SIP_HDR_CONTACT, &in_contact,
           &matchoff, &matchlen,
           &addr, &port);
  if (ret < 0) {
   nf_ct_helper_log(skb, ct, "cannot parse contact");
   return NF_DROP;
  } else if (ret == 0)
   break;


  if (!nf_inet_addr_cmp(&ct->tuplehash[dir].tuple.dst.u3, &addr))
   continue;

  if (ct_sip_parse_transport(ct, *dptr, matchoff + matchlen,
        *datalen, &proto) == 0)
   continue;

  ret = ct_sip_parse_numerical_param(ct, *dptr,
         matchoff + matchlen,
         *datalen, "expires=",
         ((void*)0), ((void*)0), &c_expires);
  if (ret < 0) {
   nf_ct_helper_log(skb, ct, "cannot parse expires");
   return NF_DROP;
  }
  if (c_expires == 0)
   break;
  if (refresh_signalling_expectation(ct, &addr, proto, port,
         c_expires))
   return NF_ACCEPT;
 }

flush:
 flush_expectations(ct, 0);
 return NF_ACCEPT;
}
