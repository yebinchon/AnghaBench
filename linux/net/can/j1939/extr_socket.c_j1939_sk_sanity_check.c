
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgn; } ;
struct TYPE_4__ {TYPE_1__ j1939; } ;
struct sockaddr_can {scalar_t__ can_family; TYPE_2__ can_addr; int can_ifindex; } ;


 scalar_t__ AF_CAN ;
 int EDESTADDRREQ ;
 int EINVAL ;
 int ENODEV ;
 int J1939_MIN_NAMELEN ;
 int j1939_pgn_is_clean_pdu (int ) ;
 scalar_t__ j1939_pgn_is_valid (int ) ;

__attribute__((used)) static int j1939_sk_sanity_check(struct sockaddr_can *addr, int len)
{
 if (!addr)
  return -EDESTADDRREQ;
 if (len < J1939_MIN_NAMELEN)
  return -EINVAL;
 if (addr->can_family != AF_CAN)
  return -EINVAL;
 if (!addr->can_ifindex)
  return -ENODEV;
 if (j1939_pgn_is_valid(addr->can_addr.j1939.pgn) &&
     !j1939_pgn_is_clean_pdu(addr->can_addr.j1939.pgn))
  return -EINVAL;

 return 0;
}
