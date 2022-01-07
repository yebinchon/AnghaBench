
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib6_sernum; } ;
struct net {TYPE_1__ ipv6; } ;


 int INT_MAX ;
 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;

__attribute__((used)) static int fib6_new_sernum(struct net *net)
{
 int new, old;

 do {
  old = atomic_read(&net->ipv6.fib6_sernum);
  new = old < INT_MAX ? old + 1 : 1;
 } while (atomic_cmpxchg(&net->ipv6.fib6_sernum,
    old, new) != old);
 return new;
}
