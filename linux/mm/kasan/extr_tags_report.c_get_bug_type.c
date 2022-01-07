
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct page {struct kmem_cache* slab_cache; } ;
struct kmem_cache {int dummy; } ;
struct kasan_alloc_meta {scalar_t__* free_pointer_tag; } ;
struct kasan_access_info {int access_addr; } ;


 int KASAN_NR_FREE_STACKS ;
 scalar_t__ PageSlab (struct page*) ;
 struct kasan_alloc_meta* get_alloc_info (struct kmem_cache*,void*) ;
 scalar_t__ get_tag (int ) ;
 struct page* kasan_addr_to_page (void const*) ;
 void* nearest_obj (struct kmem_cache*,struct page*,void*) ;
 void* reset_tag (int ) ;

const char *get_bug_type(struct kasan_access_info *info)
{
 return "invalid-access";
}
