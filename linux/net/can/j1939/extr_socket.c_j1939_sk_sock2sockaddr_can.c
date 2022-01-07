
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addr; int name; int pgn; } ;
struct TYPE_5__ {TYPE_1__ j1939; } ;
struct sockaddr_can {TYPE_2__ can_addr; int can_ifindex; int can_family; } ;
struct TYPE_6__ {int sa; int src_name; int da; int dst_name; int pgn; } ;
struct j1939_sock {TYPE_3__ addr; int ifindex; } ;


 int AF_CAN ;

__attribute__((used)) static void j1939_sk_sock2sockaddr_can(struct sockaddr_can *addr,
           const struct j1939_sock *jsk, int peer)
{
 addr->can_family = AF_CAN;
 addr->can_ifindex = jsk->ifindex;
 addr->can_addr.j1939.pgn = jsk->addr.pgn;
 if (peer) {
  addr->can_addr.j1939.name = jsk->addr.dst_name;
  addr->can_addr.j1939.addr = jsk->addr.da;
 } else {
  addr->can_addr.j1939.name = jsk->addr.src_name;
  addr->can_addr.j1939.addr = jsk->addr.sa;
 }
}
