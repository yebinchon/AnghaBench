
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int sk; } ;
struct TYPE_5__ {int pgn; int addr; scalar_t__ name; } ;
struct TYPE_6__ {TYPE_2__ j1939; } ;
struct sockaddr_can {scalar_t__ can_ifindex; TYPE_3__ can_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int pgn; int da; scalar_t__ dst_name; } ;
struct j1939_sock {int state; scalar_t__ ifindex; TYPE_1__ addr; int sk; } ;


 int EACCES ;
 int EINVAL ;
 int J1939_NO_ADDR ;
 int J1939_SOCK_BOUND ;
 int J1939_SOCK_CONNECTED ;
 int SOCK_BROADCAST ;
 scalar_t__ j1939_pgn_is_valid (int ) ;
 struct j1939_sock* j1939_sk (int ) ;
 int j1939_sk_sanity_check (struct sockaddr_can*,int) ;
 int lock_sock (int ) ;
 int release_sock (int ) ;
 int sock_flag (int *,int ) ;

__attribute__((used)) static int j1939_sk_connect(struct socket *sock, struct sockaddr *uaddr,
       int len, int flags)
{
 struct sockaddr_can *addr = (struct sockaddr_can *)uaddr;
 struct j1939_sock *jsk = j1939_sk(sock->sk);
 int ret = 0;

 ret = j1939_sk_sanity_check(addr, len);
 if (ret)
  return ret;

 lock_sock(sock->sk);


 if (!(jsk->state & J1939_SOCK_BOUND)) {
  ret = -EINVAL;
  goto out_release_sock;
 }


 if (jsk->ifindex != addr->can_ifindex) {
  ret = -EINVAL;
  goto out_release_sock;
 }

 if (!addr->can_addr.j1939.name &&
     addr->can_addr.j1939.addr == J1939_NO_ADDR &&
     !sock_flag(&jsk->sk, SOCK_BROADCAST)) {

  ret = -EACCES;
  goto out_release_sock;
 }

 jsk->addr.dst_name = addr->can_addr.j1939.name;
 jsk->addr.da = addr->can_addr.j1939.addr;

 if (j1939_pgn_is_valid(addr->can_addr.j1939.pgn))
  jsk->addr.pgn = addr->can_addr.j1939.pgn;

 jsk->state |= J1939_SOCK_CONNECTED;

 out_release_sock:
 release_sock(sock->sk);

 return ret;
}
