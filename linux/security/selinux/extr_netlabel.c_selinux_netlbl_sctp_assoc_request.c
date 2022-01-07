
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; int sin6_family; } ;
struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sk_security_struct {int nlbl_state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {TYPE_3__* sk; } ;
struct sctp_endpoint {TYPE_2__ base; int secid; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct TYPE_10__ {int version; int saddr; } ;
struct TYPE_9__ {int saddr; } ;
struct TYPE_8__ {scalar_t__ sk_family; struct sk_security_struct* sk_security; } ;


 int AF_INET ;
 int AF_INET6 ;
 int CONFIG_IPV6 ;
 int EAFNOSUPPORT ;
 scalar_t__ IS_ENABLED (int ) ;
 int NLBL_LABELED ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 TYPE_5__* ip_hdr (struct sk_buff*) ;
 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 int netlbl_conn_setattr (TYPE_3__*,void*,struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_destroy (struct netlbl_lsm_secattr*) ;
 int netlbl_secattr_init (struct netlbl_lsm_secattr*) ;
 int security_netlbl_sid_to_secattr (int *,int ,struct netlbl_lsm_secattr*) ;
 int selinux_state ;

int selinux_netlbl_sctp_assoc_request(struct sctp_endpoint *ep,
         struct sk_buff *skb)
{
 int rc;
 struct netlbl_lsm_secattr secattr;
 struct sk_security_struct *sksec = ep->base.sk->sk_security;
 struct sockaddr_in addr4;
 struct sockaddr_in6 addr6;

 if (ep->base.sk->sk_family != PF_INET &&
    ep->base.sk->sk_family != PF_INET6)
  return 0;

 netlbl_secattr_init(&secattr);
 rc = security_netlbl_sid_to_secattr(&selinux_state,
         ep->secid, &secattr);
 if (rc != 0)
  goto assoc_request_return;




 if (ip_hdr(skb)->version == 4) {
  addr4.sin_family = AF_INET;
  addr4.sin_addr.s_addr = ip_hdr(skb)->saddr;
  rc = netlbl_conn_setattr(ep->base.sk, (void *)&addr4, &secattr);
 } else if (IS_ENABLED(CONFIG_IPV6) && ip_hdr(skb)->version == 6) {
  addr6.sin6_family = AF_INET6;
  addr6.sin6_addr = ipv6_hdr(skb)->saddr;
  rc = netlbl_conn_setattr(ep->base.sk, (void *)&addr6, &secattr);
 } else {
  rc = -EAFNOSUPPORT;
 }

 if (rc == 0)
  sksec->nlbl_state = NLBL_LABELED;

assoc_request_return:
 netlbl_secattr_destroy(&secattr);
 return rc;
}
