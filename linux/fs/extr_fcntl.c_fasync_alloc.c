
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fasync_struct {int dummy; } ;


 int GFP_KERNEL ;
 int fasync_cache ;
 struct fasync_struct* kmem_cache_alloc (int ,int ) ;

struct fasync_struct *fasync_alloc(void)
{
 return kmem_cache_alloc(fasync_cache, GFP_KERNEL);
}
