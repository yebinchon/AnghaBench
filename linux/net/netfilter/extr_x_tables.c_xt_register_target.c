
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct xt_target {size_t family; int list; } ;
struct TYPE_2__ {int mutex; int target; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* xt ;

int xt_register_target(struct xt_target *target)
{
 u_int8_t af = target->family;

 mutex_lock(&xt[af].mutex);
 list_add(&target->list, &xt[af].target);
 mutex_unlock(&xt[af].mutex);
 return 0;
}
