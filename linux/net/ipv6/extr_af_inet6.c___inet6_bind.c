
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void** s6_addr32; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; TYPE_2__ sin6_addr; scalar_t__ sin6_scope_id; int sin6_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int sk_ipv6only; int sk_userlocks; TYPE_1__* sk_prot; TYPE_2__ sk_v6_rcv_saddr; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct net {int user_ns; } ;
struct ipv6_pinfo {TYPE_2__ saddr; } ;
struct inet_sock {scalar_t__ inet_daddr; scalar_t__ inet_dport; scalar_t__ inet_num; int inet_sport; scalar_t__ bind_address_no_port; void* inet_saddr; void* inet_rcv_saddr; } ;
typedef void* __be32 ;
struct TYPE_4__ {scalar_t__ (* get_port ) (struct sock*,unsigned short) ;} ;


 scalar_t__ AF_INET6 ;
 int BPF_CGROUP_RUN_PROG_INET6_POST_BIND (struct sock*) ;
 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENODEV ;
 int INADDR_ANY ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_MULTICAST ;
 void* LOOPBACK4_IPV6 ;
 int RTN_BROADCAST ;
 int RTN_LOCAL ;
 int RTN_MULTICAST ;
 int SOCK_BINDADDR_LOCK ;
 int SOCK_BINDPORT_LOCK ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ __ipv6_addr_needs_scope_id (int) ;
 struct net_device* dev_get_by_index_rcu (struct net*,scalar_t__) ;
 void* htonl (int ) ;
 int htons (scalar_t__) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int inet_addr_type_dev_table (struct net*,struct net_device*,void*) ;
 int inet_can_nonlocal_bind (struct net*,struct inet_sock*) ;
 unsigned short inet_prot_sock (struct net*) ;
 int inet_reset_saddr (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ipv6_addr_type (TYPE_2__*) ;
 int ipv6_can_nonlocal_bind (struct net*,struct inet_sock*) ;
 int ipv6_chk_addr (struct net*,TYPE_2__*,struct net_device*,int ) ;
 int lock_sock (struct sock*) ;
 int ns_capable (int ,int ) ;
 unsigned short ntohs (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int release_sock (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ stub1 (struct sock*,unsigned short) ;

__attribute__((used)) static int __inet6_bind(struct sock *sk, struct sockaddr *uaddr, int addr_len,
   bool force_bind_address_no_port, bool with_lock)
{
 struct sockaddr_in6 *addr = (struct sockaddr_in6 *)uaddr;
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net *net = sock_net(sk);
 __be32 v4addr = 0;
 unsigned short snum;
 bool saved_ipv6only;
 int addr_type = 0;
 int err = 0;

 if (addr->sin6_family != AF_INET6)
  return -EAFNOSUPPORT;

 addr_type = ipv6_addr_type(&addr->sin6_addr);
 if ((addr_type & IPV6_ADDR_MULTICAST) && sk->sk_type == SOCK_STREAM)
  return -EINVAL;

 snum = ntohs(addr->sin6_port);
 if (snum && snum < inet_prot_sock(net) &&
     !ns_capable(net->user_ns, CAP_NET_BIND_SERVICE))
  return -EACCES;

 if (with_lock)
  lock_sock(sk);


 if (sk->sk_state != TCP_CLOSE || inet->inet_num) {
  err = -EINVAL;
  goto out;
 }


 if (addr_type == IPV6_ADDR_MAPPED) {
  struct net_device *dev = ((void*)0);
  int chk_addr_ret;




  if (sk->sk_ipv6only) {
   err = -EINVAL;
   goto out;
  }

  rcu_read_lock();
  if (sk->sk_bound_dev_if) {
   dev = dev_get_by_index_rcu(net, sk->sk_bound_dev_if);
   if (!dev) {
    err = -ENODEV;
    goto out_unlock;
   }
  }


  v4addr = addr->sin6_addr.s6_addr32[3];
  chk_addr_ret = inet_addr_type_dev_table(net, dev, v4addr);
  rcu_read_unlock();

  if (!inet_can_nonlocal_bind(net, inet) &&
      v4addr != htonl(INADDR_ANY) &&
      chk_addr_ret != RTN_LOCAL &&
      chk_addr_ret != RTN_MULTICAST &&
      chk_addr_ret != RTN_BROADCAST) {
   err = -EADDRNOTAVAIL;
   goto out;
  }
 } else {
  if (addr_type != IPV6_ADDR_ANY) {
   struct net_device *dev = ((void*)0);

   rcu_read_lock();
   if (__ipv6_addr_needs_scope_id(addr_type)) {
    if (addr_len >= sizeof(struct sockaddr_in6) &&
        addr->sin6_scope_id) {



     sk->sk_bound_dev_if = addr->sin6_scope_id;
    }


    if (!sk->sk_bound_dev_if) {
     err = -EINVAL;
     goto out_unlock;
    }
   }

   if (sk->sk_bound_dev_if) {
    dev = dev_get_by_index_rcu(net, sk->sk_bound_dev_if);
    if (!dev) {
     err = -ENODEV;
     goto out_unlock;
    }
   }




   v4addr = LOOPBACK4_IPV6;
   if (!(addr_type & IPV6_ADDR_MULTICAST)) {
    if (!ipv6_can_nonlocal_bind(net, inet) &&
        !ipv6_chk_addr(net, &addr->sin6_addr,
         dev, 0)) {
     err = -EADDRNOTAVAIL;
     goto out_unlock;
    }
   }
   rcu_read_unlock();
  }
 }

 inet->inet_rcv_saddr = v4addr;
 inet->inet_saddr = v4addr;

 sk->sk_v6_rcv_saddr = addr->sin6_addr;

 if (!(addr_type & IPV6_ADDR_MULTICAST))
  np->saddr = addr->sin6_addr;

 saved_ipv6only = sk->sk_ipv6only;
 if (addr_type != IPV6_ADDR_ANY && addr_type != IPV6_ADDR_MAPPED)
  sk->sk_ipv6only = 1;


 if (snum || !(inet->bind_address_no_port ||
        force_bind_address_no_port)) {
  if (sk->sk_prot->get_port(sk, snum)) {
   sk->sk_ipv6only = saved_ipv6only;
   inet_reset_saddr(sk);
   err = -EADDRINUSE;
   goto out;
  }
  err = BPF_CGROUP_RUN_PROG_INET6_POST_BIND(sk);
  if (err) {
   sk->sk_ipv6only = saved_ipv6only;
   inet_reset_saddr(sk);
   goto out;
  }
 }

 if (addr_type != IPV6_ADDR_ANY)
  sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
 if (snum)
  sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
 inet->inet_sport = htons(inet->inet_num);
 inet->inet_dport = 0;
 inet->inet_daddr = 0;
out:
 if (with_lock)
  release_sock(sk);
 return err;
out_unlock:
 rcu_read_unlock();
 goto out;
}
