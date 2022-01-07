
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_l2tpip6 {scalar_t__ l2tp_family; int l2tp_scope_id; int l2tp_conn_id; int l2tp_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_bound_dev_if; int sk_v6_rcv_saddr; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int saddr; } ;
struct inet_sock {void* inet_rcv_saddr; void* inet_saddr; } ;
typedef void* __be32 ;
struct TYPE_2__ {int conn_id; } ;


 scalar_t__ AF_INET6 ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int IPV6_ADDR_ANY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MAPPED ;
 int IPV6_ADDR_MULTICAST ;
 void* LOOPBACK4_IPV6 ;
 int SOCK_ZAPPED ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ __l2tp_ip6_bind_lookup (struct net*,int *,int *,int,int ) ;
 struct net_device* dev_get_by_index_rcu (struct net*,int) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ipv6_addr_type (int *) ;
 int ipv6_chk_addr (struct net*,int *,struct net_device*,int ) ;
 int l2tp_ip6_bind_table ;
 int l2tp_ip6_lock ;
 TYPE_1__* l2tp_ip6_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int release_sock (struct sock*) ;
 int sk_add_bind_node (struct sock*,int *) ;
 int sk_del_node_init (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 struct net* sock_net (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int l2tp_ip6_bind(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sockaddr_l2tpip6 *addr = (struct sockaddr_l2tpip6 *) uaddr;
 struct net *net = sock_net(sk);
 __be32 v4addr = 0;
 int bound_dev_if;
 int addr_type;
 int err;

 if (addr->l2tp_family != AF_INET6)
  return -EINVAL;
 if (addr_len < sizeof(*addr))
  return -EINVAL;

 addr_type = ipv6_addr_type(&addr->l2tp_addr);


 if (addr_type == IPV6_ADDR_MAPPED)
  return -EADDRNOTAVAIL;


 if (addr_type & IPV6_ADDR_MULTICAST)
  return -EADDRNOTAVAIL;

 lock_sock(sk);

 err = -EINVAL;
 if (!sock_flag(sk, SOCK_ZAPPED))
  goto out_unlock;

 if (sk->sk_state != TCP_CLOSE)
  goto out_unlock;

 bound_dev_if = sk->sk_bound_dev_if;


 rcu_read_lock();
 if (addr_type != IPV6_ADDR_ANY) {
  struct net_device *dev = ((void*)0);

  if (addr_type & IPV6_ADDR_LINKLOCAL) {
   if (addr->l2tp_scope_id)
    bound_dev_if = addr->l2tp_scope_id;




   if (!bound_dev_if)
    goto out_unlock_rcu;

   err = -ENODEV;
   dev = dev_get_by_index_rcu(sock_net(sk), bound_dev_if);
   if (!dev)
    goto out_unlock_rcu;
  }




  v4addr = LOOPBACK4_IPV6;
  err = -EADDRNOTAVAIL;
  if (!ipv6_chk_addr(sock_net(sk), &addr->l2tp_addr, dev, 0))
   goto out_unlock_rcu;
 }
 rcu_read_unlock();

 write_lock_bh(&l2tp_ip6_lock);
 if (__l2tp_ip6_bind_lookup(net, &addr->l2tp_addr, ((void*)0), bound_dev_if,
       addr->l2tp_conn_id)) {
  write_unlock_bh(&l2tp_ip6_lock);
  err = -EADDRINUSE;
  goto out_unlock;
 }

 inet->inet_saddr = v4addr;
 inet->inet_rcv_saddr = v4addr;
 sk->sk_bound_dev_if = bound_dev_if;
 sk->sk_v6_rcv_saddr = addr->l2tp_addr;
 np->saddr = addr->l2tp_addr;

 l2tp_ip6_sk(sk)->conn_id = addr->l2tp_conn_id;

 sk_add_bind_node(sk, &l2tp_ip6_bind_table);
 sk_del_node_init(sk);
 write_unlock_bh(&l2tp_ip6_lock);

 sock_reset_flag(sk, SOCK_ZAPPED);
 release_sock(sk);
 return 0;

out_unlock_rcu:
 rcu_read_unlock();
out_unlock:
 release_sock(sk);

 return err;
}
