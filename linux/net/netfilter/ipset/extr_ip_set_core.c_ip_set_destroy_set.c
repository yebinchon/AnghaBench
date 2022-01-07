
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ip_set {TYPE_2__* type; TYPE_1__* variant; int name; } ;
struct TYPE_4__ {int me; } ;
struct TYPE_3__ {int (* destroy ) (struct ip_set*) ;} ;


 int kfree (struct ip_set*) ;
 int module_put (int ) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct ip_set*) ;

__attribute__((used)) static void
ip_set_destroy_set(struct ip_set *set)
{
 pr_debug("set: %s\n", set->name);


 set->variant->destroy(set);
 module_put(set->type->me);
 kfree(set);
}
