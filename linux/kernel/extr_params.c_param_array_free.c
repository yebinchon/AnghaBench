
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kparam_array {unsigned int* num; unsigned int max; unsigned int elemsize; scalar_t__ elem; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;

__attribute__((used)) static void param_array_free(void *arg)
{
 unsigned int i;
 const struct kparam_array *arr = arg;

 if (arr->ops->free)
  for (i = 0; i < (arr->num ? *arr->num : arr->max); i++)
   arr->ops->free(arr->elem + arr->elemsize * i);
}
