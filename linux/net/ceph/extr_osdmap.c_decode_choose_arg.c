
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct crush_weight_set {int * weights; int size; } ;
struct crush_choose_arg {size_t weight_set_size; int * ids; int ids_size; struct crush_weight_set* weight_set; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOIO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ceph_decode_32_safe (void**,void*,size_t,int ) ;
 void* decode_array_32_alloc (void**,void*,int *) ;
 int e_inval ;
 struct crush_weight_set* kmalloc_array (size_t,int,int ) ;

__attribute__((used)) static int decode_choose_arg(void **p, void *end, struct crush_choose_arg *arg)
{
 int ret;

 ceph_decode_32_safe(p, end, arg->weight_set_size, e_inval);
 if (arg->weight_set_size) {
  u32 i;

  arg->weight_set = kmalloc_array(arg->weight_set_size,
      sizeof(*arg->weight_set),
      GFP_NOIO);
  if (!arg->weight_set)
   return -ENOMEM;

  for (i = 0; i < arg->weight_set_size; i++) {
   struct crush_weight_set *w = &arg->weight_set[i];

   w->weights = decode_array_32_alloc(p, end, &w->size);
   if (IS_ERR(w->weights)) {
    ret = PTR_ERR(w->weights);
    w->weights = ((void*)0);
    return ret;
   }
  }
 }

 arg->ids = decode_array_32_alloc(p, end, &arg->ids_size);
 if (IS_ERR(arg->ids)) {
  ret = PTR_ERR(arg->ids);
  arg->ids = ((void*)0);
  return ret;
 }

 return 0;

e_inval:
 return -EINVAL;
}
