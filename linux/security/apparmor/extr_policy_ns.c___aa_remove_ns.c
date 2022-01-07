
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct aa_ns {TYPE_1__ base; } ;


 int aa_put_ns (struct aa_ns*) ;
 int destroy_ns (struct aa_ns*) ;
 int list_del_rcu (int *) ;

void __aa_remove_ns(struct aa_ns *ns)
{

 list_del_rcu(&ns->base.list);
 destroy_ns(ns);
 aa_put_ns(ns);
}
