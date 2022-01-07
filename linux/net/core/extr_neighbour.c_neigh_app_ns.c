
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;


 int NLM_F_REQUEST ;
 int RTM_GETNEIGH ;
 int __neigh_notify (struct neighbour*,int ,int ,int ) ;

void neigh_app_ns(struct neighbour *n)
{
 __neigh_notify(n, RTM_GETNEIGH, NLM_F_REQUEST, 0);
}
