
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int nf_ct_acct_update (struct nf_conn*,int,int ) ;
 int nf_ct_delete (struct nf_conn*,int ,int ) ;

bool nf_ct_kill_acct(struct nf_conn *ct,
       enum ip_conntrack_info ctinfo,
       const struct sk_buff *skb)
{
 nf_ct_acct_update(ct, ctinfo, skb->len);

 return nf_ct_delete(ct, 0, 0);
}
