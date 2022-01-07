
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_5__ {int can_mask; int can_id; } ;
struct TYPE_6__ {TYPE_2__ filter; } ;
struct TYPE_4__ {int dev; } ;
struct cgw_job {TYPE_3__ ccgw; TYPE_1__ src; } ;


 int can_can_gw_rcv ;
 int can_rx_register (struct net*,int ,int ,int ,int ,struct cgw_job*,char*,int *) ;

__attribute__((used)) static inline int cgw_register_filter(struct net *net, struct cgw_job *gwj)
{
 return can_rx_register(net, gwj->src.dev, gwj->ccgw.filter.can_id,
          gwj->ccgw.filter.can_mask, can_can_gw_rcv,
          gwj, "gw", ((void*)0));
}
