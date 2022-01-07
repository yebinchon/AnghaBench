
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kparam_array {int* num; int max; int elemsize; TYPE_1__* ops; scalar_t__ elem; } ;
struct kernel_param {int mod; scalar_t__ arg; struct kparam_array* arr; } ;
struct TYPE_2__ {int (* get ) (char*,struct kernel_param*) ;} ;


 int check_kparam_locked (int ) ;
 int stub1 (char*,struct kernel_param*) ;

__attribute__((used)) static int param_array_get(char *buffer, const struct kernel_param *kp)
{
 int i, off, ret;
 const struct kparam_array *arr = kp->arr;
 struct kernel_param p = *kp;

 for (i = off = 0; i < (arr->num ? *arr->num : arr->max); i++) {

  if (i)
   buffer[off - 1] = ',';
  p.arg = arr->elem + arr->elemsize * i;
  check_kparam_locked(p.mod);
  ret = arr->ops->get(buffer + off, &p);
  if (ret < 0)
   return ret;
  off += ret;
 }
 buffer[off] = '\0';
 return off;
}
