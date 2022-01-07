
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refcount; } ;


 int atomic_set (int *,int) ;
 TYPE_1__ def_root_domain ;
 int init_rootdomain (TYPE_1__*) ;

void init_defrootdomain(void)
{
 init_rootdomain(&def_root_domain);

 atomic_set(&def_root_domain.refcount, 1);
}
