
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DLM_BUCKETS_PER_PAGE ;
 scalar_t__ DLM_HASH_PAGES ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 int dlm_free_pagevec (void**,int) ;
 void** kmalloc_array (int,int,int ) ;
 int mlog (int ,char*,int,unsigned long,unsigned long) ;

__attribute__((used)) static void **dlm_alloc_pagevec(int pages)
{
 void **vec = kmalloc_array(pages, sizeof(void *), GFP_KERNEL);
 int i;

 if (!vec)
  return ((void*)0);

 for (i = 0; i < pages; i++)
  if (!(vec[i] = (void *)__get_free_page(GFP_KERNEL)))
   goto out_free;

 mlog(0, "Allocated DLM hash pagevec; %d pages (%lu expected), %lu buckets per page\n",
      pages, (unsigned long)DLM_HASH_PAGES,
      (unsigned long)DLM_BUCKETS_PER_PAGE);
 return vec;
out_free:
 dlm_free_pagevec(vec, i);
 return ((void*)0);
}
