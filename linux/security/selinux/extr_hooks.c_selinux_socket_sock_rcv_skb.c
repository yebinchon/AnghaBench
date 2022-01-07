
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sock {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;
struct sk_buff {scalar_t__ protocol; int secmark; int skb_iif; } ;
struct lsm_network_audit {scalar_t__ family; int netif; int member_0; } ;
struct TYPE_2__ {struct lsm_network_audit* net; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int ETH_P_IP ;
 int LSM_AUDIT_DATA_NET ;
 int PACKET__RECV ;
 int PEER__RECV ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int SECCLASS_PACKET ;
 int SECCLASS_PEER ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 scalar_t__ htons (int ) ;
 int selinux_inet_sys_rcv_skb (int ,int ,char*,scalar_t__,int ,struct common_audit_data*) ;
 int selinux_netlbl_err (struct sk_buff*,scalar_t__,int,int ) ;
 int selinux_parse_skb (struct sk_buff*,struct common_audit_data*,char**,int,int *) ;
 scalar_t__ selinux_peerlbl_enabled () ;
 int selinux_policycap_netpeer () ;
 scalar_t__ selinux_secmark_enabled () ;
 int selinux_skb_peerlbl_sid (struct sk_buff*,scalar_t__,int *) ;
 int selinux_sock_rcv_skb_compat (struct sock*,struct sk_buff*,scalar_t__) ;
 int selinux_state ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int selinux_socket_sock_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 int err;
 struct sk_security_struct *sksec = sk->sk_security;
 u16 family = sk->sk_family;
 u32 sk_sid = sksec->sid;
 struct common_audit_data ad;
 struct lsm_network_audit net = {0,};
 char *addrp;
 u8 secmark_active;
 u8 peerlbl_active;

 if (family != PF_INET && family != PF_INET6)
  return 0;


 if (family == PF_INET6 && skb->protocol == htons(ETH_P_IP))
  family = PF_INET;





 if (!selinux_policycap_netpeer())
  return selinux_sock_rcv_skb_compat(sk, skb, family);

 secmark_active = selinux_secmark_enabled();
 peerlbl_active = selinux_peerlbl_enabled();
 if (!secmark_active && !peerlbl_active)
  return 0;

 ad.type = LSM_AUDIT_DATA_NET;
 ad.u.net = &net;
 ad.u.net->netif = skb->skb_iif;
 ad.u.net->family = family;
 err = selinux_parse_skb(skb, &ad, &addrp, 1, ((void*)0));
 if (err)
  return err;

 if (peerlbl_active) {
  u32 peer_sid;

  err = selinux_skb_peerlbl_sid(skb, family, &peer_sid);
  if (err)
   return err;
  err = selinux_inet_sys_rcv_skb(sock_net(sk), skb->skb_iif,
            addrp, family, peer_sid, &ad);
  if (err) {
   selinux_netlbl_err(skb, family, err, 0);
   return err;
  }
  err = avc_has_perm(&selinux_state,
       sk_sid, peer_sid, SECCLASS_PEER,
       PEER__RECV, &ad);
  if (err) {
   selinux_netlbl_err(skb, family, err, 0);
   return err;
  }
 }

 if (secmark_active) {
  err = avc_has_perm(&selinux_state,
       sk_sid, skb->secmark, SECCLASS_PACKET,
       PACKET__RECV, &ad);
  if (err)
   return err;
 }

 return err;
}
