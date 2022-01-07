
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_nat_sip_hooks {int (* msg ) (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*) ;} ;
struct nf_conn {int status; } ;


 int IPS_NAT_MASK ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int nf_ct_helper_log (struct sk_buff*,struct nf_conn*,char*) ;
 int nf_nat_sip_hooks ;
 int process_sip_request (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*) ;
 int process_sip_response (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*) ;
 struct nf_nat_sip_hooks* rcu_dereference (int ) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char const*,char*,int ) ;
 int stub1 (struct sk_buff*,unsigned int,unsigned int,char const**,unsigned int*) ;

__attribute__((used)) static int process_sip_msg(struct sk_buff *skb, struct nf_conn *ct,
      unsigned int protoff, unsigned int dataoff,
      const char **dptr, unsigned int *datalen)
{
 const struct nf_nat_sip_hooks *hooks;
 int ret;

 if (strncasecmp(*dptr, "SIP/2.0 ", strlen("SIP/2.0 ")) != 0)
  ret = process_sip_request(skb, protoff, dataoff, dptr, datalen);
 else
  ret = process_sip_response(skb, protoff, dataoff, dptr, datalen);

 if (ret == NF_ACCEPT && ct->status & IPS_NAT_MASK) {
  hooks = rcu_dereference(nf_nat_sip_hooks);
  if (hooks && !hooks->msg(skb, protoff, dataoff,
      dptr, datalen)) {
   nf_ct_helper_log(skb, ct, "cannot NAT SIP message");
   ret = NF_DROP;
  }
 }

 return ret;
}
