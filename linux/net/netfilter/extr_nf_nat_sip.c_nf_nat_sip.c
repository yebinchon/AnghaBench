
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct udphdr {scalar_t__ dest; } ;
struct sk_buff {scalar_t__ data; int len; } ;
struct nf_ct_sip_master {scalar_t__ forced_dport; } ;
struct nf_conn {TYPE_8__* tuplehash; } ;
typedef enum sip_header_types { ____Placeholder_sip_header_types } sip_header_types ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef scalar_t__ __be16 ;
struct TYPE_9__ {scalar_t__ port; } ;
struct TYPE_10__ {TYPE_1__ udp; } ;
struct TYPE_13__ {TYPE_2__ u; int u3; } ;
struct TYPE_11__ {scalar_t__ port; } ;
struct TYPE_12__ {TYPE_3__ udp; } ;
struct TYPE_14__ {TYPE_4__ u; int u3; } ;
struct TYPE_15__ {TYPE_5__ src; TYPE_6__ dst; } ;
struct TYPE_16__ {TYPE_7__ tuple; } ;


 int CTINFO2DIR (int) ;
 int INET6_ADDRSTRLEN ;
 scalar_t__ IPPROTO_TCP ;
 int IP_CT_DIR_REPLY ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 int SIP_HDR_CONTACT ;
 int SIP_HDR_FROM ;
 int SIP_HDR_TO ;
 int SIP_HDR_VIA_TCP ;
 int SIP_HDR_VIA_UDP ;
 scalar_t__ ct_sip_parse_address_param (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*,union nf_inet_addr*,int) ;
 scalar_t__ ct_sip_parse_header_uri (struct nf_conn*,char const*,unsigned int*,unsigned int,int,int*,unsigned int*,unsigned int*,union nf_inet_addr*,scalar_t__*) ;
 scalar_t__ ct_sip_parse_numerical_param (struct nf_conn*,char const*,unsigned int,unsigned int,char*,unsigned int*,unsigned int*,unsigned int*) ;
 scalar_t__ ct_sip_parse_request (struct nf_conn*,char const*,unsigned int,unsigned int*,unsigned int*,union nf_inet_addr*,scalar_t__*) ;
 scalar_t__ htons (unsigned int) ;
 int mangle_packet (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,unsigned int,char*,unsigned int) ;
 int map_addr (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int,unsigned int,union nf_inet_addr*,scalar_t__) ;
 int map_sip_addr (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,int ) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_helper_log (struct sk_buff*,struct nf_conn*,char*) ;
 scalar_t__ nf_ct_protonum (struct nf_conn*) ;
 scalar_t__ nf_inet_addr_cmp (union nf_inet_addr*,int *) ;
 int nf_nat_mangle_udp_packet (struct sk_buff*,struct nf_conn*,int,unsigned int,int ,int ,int *,int ) ;
 struct nf_ct_sip_master* nfct_help_data (struct nf_conn*) ;
 int ntohs (scalar_t__) ;
 unsigned int sip_sprintf_addr (struct nf_conn*,char*,int *,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,int ) ;
 unsigned int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char const*,char*,int ) ;

__attribute__((used)) static unsigned int nf_nat_sip(struct sk_buff *skb, unsigned int protoff,
          unsigned int dataoff,
          const char **dptr, unsigned int *datalen)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);
 struct nf_ct_sip_master *ct_sip_info = nfct_help_data(ct);
 unsigned int coff, matchoff, matchlen;
 enum sip_header_types hdr;
 union nf_inet_addr addr;
 __be16 port;
 int request, in_header;


 if (strncasecmp(*dptr, "SIP/2.0", strlen("SIP/2.0")) != 0) {
  if (ct_sip_parse_request(ct, *dptr, *datalen,
      &matchoff, &matchlen,
      &addr, &port) > 0 &&
      !map_addr(skb, protoff, dataoff, dptr, datalen,
         matchoff, matchlen, &addr, port)) {
   nf_ct_helper_log(skb, ct, "cannot mangle SIP message");
   return NF_DROP;
  }
  request = 1;
 } else
  request = 0;

 if (nf_ct_protonum(ct) == IPPROTO_TCP)
  hdr = SIP_HDR_VIA_TCP;
 else
  hdr = SIP_HDR_VIA_UDP;


 if (ct_sip_parse_header_uri(ct, *dptr, ((void*)0), *datalen,
        hdr, ((void*)0), &matchoff, &matchlen,
        &addr, &port) > 0) {
  unsigned int olen, matchend, poff, plen, buflen, n;
  char buffer[INET6_ADDRSTRLEN + sizeof("[]:nnnnn")];



  if (request) {
   if (!nf_inet_addr_cmp(&addr,
     &ct->tuplehash[dir].tuple.src.u3) ||
       port != ct->tuplehash[dir].tuple.src.u.udp.port)
    goto next;
  } else {
   if (!nf_inet_addr_cmp(&addr,
     &ct->tuplehash[dir].tuple.dst.u3) ||
       port != ct->tuplehash[dir].tuple.dst.u.udp.port)
    goto next;
  }

  olen = *datalen;
  if (!map_addr(skb, protoff, dataoff, dptr, datalen,
         matchoff, matchlen, &addr, port)) {
   nf_ct_helper_log(skb, ct, "cannot mangle Via header");
   return NF_DROP;
  }

  matchend = matchoff + matchlen + *datalen - olen;



  if (ct_sip_parse_address_param(ct, *dptr, matchend, *datalen,
            "maddr=", &poff, &plen,
            &addr, 1) > 0 &&
      nf_inet_addr_cmp(&addr, &ct->tuplehash[dir].tuple.src.u3) &&
      !nf_inet_addr_cmp(&addr, &ct->tuplehash[!dir].tuple.dst.u3)) {
   buflen = sip_sprintf_addr(ct, buffer,
     &ct->tuplehash[!dir].tuple.dst.u3,
     1);
   if (!mangle_packet(skb, protoff, dataoff, dptr, datalen,
        poff, plen, buffer, buflen)) {
    nf_ct_helper_log(skb, ct, "cannot mangle maddr");
    return NF_DROP;
   }
  }



  if (ct_sip_parse_address_param(ct, *dptr, matchend, *datalen,
            "received=", &poff, &plen,
            &addr, 0) > 0 &&
      nf_inet_addr_cmp(&addr, &ct->tuplehash[dir].tuple.dst.u3) &&
      !nf_inet_addr_cmp(&addr, &ct->tuplehash[!dir].tuple.src.u3)) {
   buflen = sip_sprintf_addr(ct, buffer,
     &ct->tuplehash[!dir].tuple.src.u3,
     0);
   if (!mangle_packet(skb, protoff, dataoff, dptr, datalen,
        poff, plen, buffer, buflen)) {
    nf_ct_helper_log(skb, ct, "cannot mangle received");
    return NF_DROP;
   }
  }



  if (ct_sip_parse_numerical_param(ct, *dptr, matchend, *datalen,
       "rport=", &poff, &plen,
       &n) > 0 &&
      htons(n) == ct->tuplehash[dir].tuple.dst.u.udp.port &&
      htons(n) != ct->tuplehash[!dir].tuple.src.u.udp.port) {
   __be16 p = ct->tuplehash[!dir].tuple.src.u.udp.port;
   buflen = sprintf(buffer, "%u", ntohs(p));
   if (!mangle_packet(skb, protoff, dataoff, dptr, datalen,
        poff, plen, buffer, buflen)) {
    nf_ct_helper_log(skb, ct, "cannot mangle rport");
    return NF_DROP;
   }
  }
 }

next:

 coff = 0;
 in_header = 0;
 while (ct_sip_parse_header_uri(ct, *dptr, &coff, *datalen,
           SIP_HDR_CONTACT, &in_header,
           &matchoff, &matchlen,
           &addr, &port) > 0) {
  if (!map_addr(skb, protoff, dataoff, dptr, datalen,
         matchoff, matchlen,
         &addr, port)) {
   nf_ct_helper_log(skb, ct, "cannot mangle contact");
   return NF_DROP;
  }
 }

 if (!map_sip_addr(skb, protoff, dataoff, dptr, datalen, SIP_HDR_FROM) ||
     !map_sip_addr(skb, protoff, dataoff, dptr, datalen, SIP_HDR_TO)) {
  nf_ct_helper_log(skb, ct, "cannot mangle SIP from/to");
  return NF_DROP;
 }


 if (dir == IP_CT_DIR_REPLY && ct_sip_info->forced_dport) {
  struct udphdr *uh;

  if (skb_ensure_writable(skb, skb->len)) {
   nf_ct_helper_log(skb, ct, "cannot mangle packet");
   return NF_DROP;
  }

  uh = (void *)skb->data + protoff;
  uh->dest = ct_sip_info->forced_dport;

  if (!nf_nat_mangle_udp_packet(skb, ct, ctinfo, protoff,
           0, 0, ((void*)0), 0)) {
   nf_ct_helper_log(skb, ct, "cannot mangle packet");
   return NF_DROP;
  }
 }

 return NF_ACCEPT;
}
