
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kparam_array {scalar_t__ num; TYPE_1__* ops; int elemsize; int elem; int max; } ;
struct kernel_param {int level; int name; int mod; struct kparam_array* arr; } ;
struct TYPE_2__ {int set; } ;


 int param_array (int ,int ,char const*,int,int ,int ,int ,int ,int ,unsigned int*) ;

__attribute__((used)) static int param_array_set(const char *val, const struct kernel_param *kp)
{
 const struct kparam_array *arr = kp->arr;
 unsigned int temp_num;

 return param_array(kp->mod, kp->name, val, 1, arr->max, arr->elem,
      arr->elemsize, arr->ops->set, kp->level,
      arr->num ?: &temp_num);
}
