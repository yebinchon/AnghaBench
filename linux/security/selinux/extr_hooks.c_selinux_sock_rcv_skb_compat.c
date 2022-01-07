
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;
struct sk_buff {int secmark; int skb_iif; } ;
struct lsm_network_audit {int family; int netif; int member_0; } ;
struct TYPE_2__ {struct lsm_network_audit* net; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_NET ;
 int PACKET__RECV ;
 int SECCLASS_PACKET ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int selinux_netlbl_sock_rcv_skb (struct sk_security_struct*,struct sk_buff*,int ,struct common_audit_data*) ;
 int selinux_parse_skb (struct sk_buff*,struct common_audit_data*,char**,int,int *) ;
 scalar_t__ selinux_secmark_enabled () ;
 int selinux_state ;
 int selinux_xfrm_sock_rcv_skb (int ,struct sk_buff*,struct common_audit_data*) ;

__attribute__((used)) static int selinux_sock_rcv_skb_compat(struct sock *sk, struct sk_buff *skb,
           u16 family)
{
 int err = 0;
 struct sk_security_struct *sksec = sk->sk_security;
 u32 sk_sid = sksec->sid;
 struct common_audit_data ad;
 struct lsm_network_audit net = {0,};
 char *addrp;

 ad.type = LSM_AUDIT_DATA_NET;
 ad.u.net = &net;
 ad.u.net->netif = skb->skb_iif;
 ad.u.net->family = family;
 err = selinux_parse_skb(skb, &ad, &addrp, 1, ((void*)0));
 if (err)
  return err;

 if (selinux_secmark_enabled()) {
  err = avc_has_perm(&selinux_state,
       sk_sid, skb->secmark, SECCLASS_PACKET,
       PACKET__RECV, &ad);
  if (err)
   return err;
 }

 err = selinux_netlbl_sock_rcv_skb(sksec, skb, family, &ad);
 if (err)
  return err;
 err = selinux_xfrm_sock_rcv_skb(sksec->sid, skb, &ad);

 return err;
}
