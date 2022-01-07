
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct crush_map {size_t max_buckets; int choose_args; TYPE_1__** buckets; } ;
struct crush_choose_arg_map {size_t size; struct crush_choose_arg* args; int choose_args_index; } ;
struct crush_choose_arg {scalar_t__ ids_size; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOIO ;
 struct crush_choose_arg_map* alloc_choose_arg_map () ;
 int ceph_decode_32_safe (void**,void*,size_t,int ) ;
 int ceph_decode_64_safe (void**,void*,int ,int ) ;
 int decode_choose_arg (void**,void*,struct crush_choose_arg*) ;
 int e_inval ;
 int free_choose_arg_map (struct crush_choose_arg_map*) ;
 int insert_choose_arg_map (int *,struct crush_choose_arg_map*) ;
 struct crush_choose_arg* kcalloc (size_t,int,int ) ;

__attribute__((used)) static int decode_choose_args(void **p, void *end, struct crush_map *c)
{
 struct crush_choose_arg_map *arg_map = ((void*)0);
 u32 num_choose_arg_maps, num_buckets;
 int ret;

 ceph_decode_32_safe(p, end, num_choose_arg_maps, e_inval);
 while (num_choose_arg_maps--) {
  arg_map = alloc_choose_arg_map();
  if (!arg_map) {
   ret = -ENOMEM;
   goto fail;
  }

  ceph_decode_64_safe(p, end, arg_map->choose_args_index,
        e_inval);
  arg_map->size = c->max_buckets;
  arg_map->args = kcalloc(arg_map->size, sizeof(*arg_map->args),
     GFP_NOIO);
  if (!arg_map->args) {
   ret = -ENOMEM;
   goto fail;
  }

  ceph_decode_32_safe(p, end, num_buckets, e_inval);
  while (num_buckets--) {
   struct crush_choose_arg *arg;
   u32 bucket_index;

   ceph_decode_32_safe(p, end, bucket_index, e_inval);
   if (bucket_index >= arg_map->size)
    goto e_inval;

   arg = &arg_map->args[bucket_index];
   ret = decode_choose_arg(p, end, arg);
   if (ret)
    goto fail;

   if (arg->ids_size &&
       arg->ids_size != c->buckets[bucket_index]->size)
    goto e_inval;
  }

  insert_choose_arg_map(&c->choose_args, arg_map);
 }

 return 0;

e_inval:
 ret = -EINVAL;
fail:
 free_choose_arg_map(arg_map);
 return ret;
}
