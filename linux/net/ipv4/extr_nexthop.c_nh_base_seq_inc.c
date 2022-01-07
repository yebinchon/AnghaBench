
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ seq; } ;
struct net {TYPE_1__ nexthop; } ;



__attribute__((used)) static void nh_base_seq_inc(struct net *net)
{
 while (++net->nexthop.seq == 0)
  ;
}
