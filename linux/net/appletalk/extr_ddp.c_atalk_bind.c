
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ s_net; int s_node; } ;
struct sockaddr_at {scalar_t__ sat_family; scalar_t__ sat_port; TYPE_1__ sat_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct atalk_sock {scalar_t__ src_net; scalar_t__ src_port; int src_node; } ;
struct atalk_addr {scalar_t__ s_net; int s_node; } ;


 scalar_t__ AF_APPLETALK ;
 int ATADDR_ANYNET ;
 scalar_t__ ATADDR_ANYPORT ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int SOCK_ZAPPED ;
 struct atalk_sock* at_sk (struct sock*) ;
 int atalk_find_interface (scalar_t__,int ) ;
 scalar_t__ atalk_find_or_insert_socket (struct sock*,struct sockaddr_at*) ;
 struct atalk_addr* atalk_find_primary () ;
 int atalk_pick_and_bind_port (struct sock*,struct sockaddr_at*) ;
 scalar_t__ htons (int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int atalk_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sockaddr_at *addr = (struct sockaddr_at *)uaddr;
 struct sock *sk = sock->sk;
 struct atalk_sock *at = at_sk(sk);
 int err;

 if (!sock_flag(sk, SOCK_ZAPPED) ||
     addr_len != sizeof(struct sockaddr_at))
  return -EINVAL;

 if (addr->sat_family != AF_APPLETALK)
  return -EAFNOSUPPORT;

 lock_sock(sk);
 if (addr->sat_addr.s_net == htons(ATADDR_ANYNET)) {
  struct atalk_addr *ap = atalk_find_primary();

  err = -EADDRNOTAVAIL;
  if (!ap)
   goto out;

  at->src_net = addr->sat_addr.s_net = ap->s_net;
  at->src_node = addr->sat_addr.s_node = ap->s_node;
 } else {
  err = -EADDRNOTAVAIL;
  if (!atalk_find_interface(addr->sat_addr.s_net,
       addr->sat_addr.s_node))
   goto out;

  at->src_net = addr->sat_addr.s_net;
  at->src_node = addr->sat_addr.s_node;
 }

 if (addr->sat_port == ATADDR_ANYPORT) {
  err = atalk_pick_and_bind_port(sk, addr);

  if (err < 0)
   goto out;
 } else {
  at->src_port = addr->sat_port;

  err = -EADDRINUSE;
  if (atalk_find_or_insert_socket(sk, addr))
   goto out;
 }

 sock_reset_flag(sk, SOCK_ZAPPED);
 err = 0;
out:
 release_sock(sk);
 return err;
}
