
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_type; scalar_t__ sk_protocol; scalar_t__ sk_user_data; } ;
struct net {int dummy; } ;
typedef enum l2tp_encap_type { ____Placeholder_l2tp_encap_type } l2tp_encap_type ;


 int EBUSY ;
 int EINVAL ;
 int EPROTONOSUPPORT ;
 scalar_t__ IPPROTO_L2TP ;
 scalar_t__ IPPROTO_UDP ;
 int L2TP_ENCAPTYPE_IP ;
 int L2TP_ENCAPTYPE_UDP ;
 scalar_t__ SOCK_DGRAM ;
 int net_eq (int ,struct net const*) ;
 int sock_net (struct sock const*) ;

__attribute__((used)) static int l2tp_validate_socket(const struct sock *sk, const struct net *net,
    enum l2tp_encap_type encap)
{
 if (!net_eq(sock_net(sk), net))
  return -EINVAL;

 if (sk->sk_type != SOCK_DGRAM)
  return -EPROTONOSUPPORT;

 if ((encap == L2TP_ENCAPTYPE_UDP && sk->sk_protocol != IPPROTO_UDP) ||
     (encap == L2TP_ENCAPTYPE_IP && sk->sk_protocol != IPPROTO_L2TP))
  return -EPROTONOSUPPORT;

 if (sk->sk_user_data)
  return -EBUSY;

 return 0;
}
