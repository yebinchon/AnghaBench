
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_4__ {TYPE_1__ nameseq; } ;
struct sockaddr_tipc {scalar_t__ family; scalar_t__ addrtype; TYPE_2__ addr; } ;


 scalar_t__ AF_TIPC ;
 scalar_t__ TIPC_SERVICE_ADDR ;
 scalar_t__ TIPC_SERVICE_RANGE ;
 scalar_t__ TIPC_SOCKET_ADDR ;

__attribute__((used)) static bool tipc_sockaddr_is_sane(struct sockaddr_tipc *addr)
{
 if (addr->family != AF_TIPC)
  return 0;
 if (addr->addrtype == TIPC_SERVICE_RANGE)
  return (addr->addr.nameseq.lower <= addr->addr.nameseq.upper);
 return (addr->addrtype == TIPC_SERVICE_ADDR ||
  addr->addrtype == TIPC_SOCKET_ADDR);
}
