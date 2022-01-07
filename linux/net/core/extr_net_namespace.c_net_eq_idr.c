
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NET_ID_ZERO ;
 scalar_t__ net_eq (void*,void*) ;

__attribute__((used)) static int net_eq_idr(int id, void *net, void *peer)
{
 if (net_eq(net, peer))
  return id ? : NET_ID_ZERO;
 return 0;
}
