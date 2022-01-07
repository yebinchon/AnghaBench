
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_userlocks; TYPE_2__* sk_prot; int sk_bound_dev_if; } ;
struct net {int user_ns; } ;
struct inet_sock {scalar_t__ inet_rcv_saddr; scalar_t__ inet_saddr; scalar_t__ inet_dport; scalar_t__ inet_daddr; scalar_t__ inet_num; int inet_sport; scalar_t__ bind_address_no_port; } ;
struct TYPE_4__ {scalar_t__ (* get_port ) (struct sock*,unsigned short) ;} ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_UNSPEC ;
 int BPF_CGROUP_RUN_PROG_INET4_POST_BIND (struct sock*) ;
 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int INADDR_ANY ;
 int RTN_BROADCAST ;
 int RTN_LOCAL ;
 int RTN_MULTICAST ;
 int RT_TABLE_LOCAL ;
 int SOCK_BINDADDR_LOCK ;
 int SOCK_BINDPORT_LOCK ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ htonl (int ) ;
 int htons (scalar_t__) ;
 int inet_addr_type_table (struct net*,scalar_t__,int ) ;
 int inet_can_nonlocal_bind (struct net*,struct inet_sock*) ;
 unsigned short inet_prot_sock (struct net*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ l3mdev_fib_table_by_index (struct net*,int ) ;
 int lock_sock (struct sock*) ;
 int ns_capable (int ,int ) ;
 unsigned short ntohs (int ) ;
 int release_sock (struct sock*) ;
 int sk_dst_reset (struct sock*) ;
 struct net* sock_net (struct sock*) ;
 scalar_t__ stub1 (struct sock*,unsigned short) ;

int __inet_bind(struct sock *sk, struct sockaddr *uaddr, int addr_len,
  bool force_bind_address_no_port, bool with_lock)
{
 struct sockaddr_in *addr = (struct sockaddr_in *)uaddr;
 struct inet_sock *inet = inet_sk(sk);
 struct net *net = sock_net(sk);
 unsigned short snum;
 int chk_addr_ret;
 u32 tb_id = RT_TABLE_LOCAL;
 int err;

 if (addr->sin_family != AF_INET) {



  err = -EAFNOSUPPORT;
  if (addr->sin_family != AF_UNSPEC ||
      addr->sin_addr.s_addr != htonl(INADDR_ANY))
   goto out;
 }

 tb_id = l3mdev_fib_table_by_index(net, sk->sk_bound_dev_if) ? : tb_id;
 chk_addr_ret = inet_addr_type_table(net, addr->sin_addr.s_addr, tb_id);
 err = -EADDRNOTAVAIL;
 if (!inet_can_nonlocal_bind(net, inet) &&
     addr->sin_addr.s_addr != htonl(INADDR_ANY) &&
     chk_addr_ret != RTN_LOCAL &&
     chk_addr_ret != RTN_MULTICAST &&
     chk_addr_ret != RTN_BROADCAST)
  goto out;

 snum = ntohs(addr->sin_port);
 err = -EACCES;
 if (snum && snum < inet_prot_sock(net) &&
     !ns_capable(net->user_ns, CAP_NET_BIND_SERVICE))
  goto out;
 if (with_lock)
  lock_sock(sk);


 err = -EINVAL;
 if (sk->sk_state != TCP_CLOSE || inet->inet_num)
  goto out_release_sock;

 inet->inet_rcv_saddr = inet->inet_saddr = addr->sin_addr.s_addr;
 if (chk_addr_ret == RTN_MULTICAST || chk_addr_ret == RTN_BROADCAST)
  inet->inet_saddr = 0;


 if (snum || !(inet->bind_address_no_port ||
        force_bind_address_no_port)) {
  if (sk->sk_prot->get_port(sk, snum)) {
   inet->inet_saddr = inet->inet_rcv_saddr = 0;
   err = -EADDRINUSE;
   goto out_release_sock;
  }
  err = BPF_CGROUP_RUN_PROG_INET4_POST_BIND(sk);
  if (err) {
   inet->inet_saddr = inet->inet_rcv_saddr = 0;
   goto out_release_sock;
  }
 }

 if (inet->inet_rcv_saddr)
  sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
 if (snum)
  sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
 inet->inet_sport = htons(inet->inet_num);
 inet->inet_daddr = 0;
 inet->inet_dport = 0;
 sk_dst_reset(sk);
 err = 0;
out_release_sock:
 if (with_lock)
  release_sock(sk);
out:
 return err;
}
