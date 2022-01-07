
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_alloc_cache {int page; } ;
typedef int gfp_t ;


 int napi_alloc_cache ;
 void* page_frag_alloc (int *,unsigned int,int ) ;
 struct napi_alloc_cache* this_cpu_ptr (int *) ;

__attribute__((used)) static void *__napi_alloc_frag(unsigned int fragsz, gfp_t gfp_mask)
{
 struct napi_alloc_cache *nc = this_cpu_ptr(&napi_alloc_cache);

 return page_frag_alloc(&nc->page, fragsz, gfp_mask);
}
