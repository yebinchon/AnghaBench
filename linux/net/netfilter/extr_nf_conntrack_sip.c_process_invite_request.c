
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_ct_sip_master {unsigned int invite_cseq; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 unsigned int NF_ACCEPT ;
 int flush_expectations (struct nf_conn*,int) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 struct nf_ct_sip_master* nfct_help_data (struct nf_conn*) ;
 unsigned int process_sdp (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*,unsigned int) ;

__attribute__((used)) static int process_invite_request(struct sk_buff *skb, unsigned int protoff,
      unsigned int dataoff,
      const char **dptr, unsigned int *datalen,
      unsigned int cseq)
{
 enum ip_conntrack_info ctinfo;
 struct nf_conn *ct = nf_ct_get(skb, &ctinfo);
 struct nf_ct_sip_master *ct_sip_info = nfct_help_data(ct);
 unsigned int ret;

 flush_expectations(ct, 1);
 ret = process_sdp(skb, protoff, dataoff, dptr, datalen, cseq);
 if (ret == NF_ACCEPT)
  ct_sip_info->invite_cseq = cseq;
 return ret;
}
