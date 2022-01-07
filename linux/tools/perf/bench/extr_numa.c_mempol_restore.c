
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nr_nodes; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int BUG_ON (int) ;
 int MPOL_DEFAULT ;
 TYPE_2__* g ;
 int set_mempolicy (int ,int *,scalar_t__) ;

__attribute__((used)) static void mempol_restore(void)
{
 int ret;

 ret = set_mempolicy(MPOL_DEFAULT, ((void*)0), g->p.nr_nodes-1);

 BUG_ON(ret);
}
