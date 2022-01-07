
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_bound_dev_if; scalar_t__ sk_family; } ;
struct net_device {scalar_t__ ifindex; } ;
struct ipv6_pinfo {scalar_t__ mcast_oif; } ;
struct inet_sock {scalar_t__ mc_index; } ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int set_mcast_if(struct sock *sk, struct net_device *dev)
{
 struct inet_sock *inet = inet_sk(sk);

 if (sk->sk_bound_dev_if && dev->ifindex != sk->sk_bound_dev_if)
  return -EINVAL;

 lock_sock(sk);
 inet->mc_index = dev->ifindex;
 release_sock(sk);

 return 0;
}
