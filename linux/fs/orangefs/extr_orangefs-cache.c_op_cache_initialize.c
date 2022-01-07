
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {int dummy; } ;


 int ENOMEM ;
 int ORANGEFS_CACHE_CREATE_FLAGS ;
 int gossip_err (char*) ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int next_tag_value ;
 int next_tag_value_lock ;
 int op_cache ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int op_cache_initialize(void)
{
 op_cache = kmem_cache_create("orangefs_op_cache",
         sizeof(struct orangefs_kernel_op_s),
         0,
         ORANGEFS_CACHE_CREATE_FLAGS,
         ((void*)0));

 if (!op_cache) {
  gossip_err("Cannot create orangefs_op_cache\n");
  return -ENOMEM;
 }


 spin_lock(&next_tag_value_lock);
 next_tag_value = 100;
 spin_unlock(&next_tag_value_lock);
 return 0;
}
