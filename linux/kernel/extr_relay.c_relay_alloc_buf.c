
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {unsigned int page_count; int * page_array; } ;


 int GFP_KERNEL ;
 size_t PAGE_ALIGN (size_t) ;
 int PAGE_KERNEL ;
 size_t PAGE_SHIFT ;
 int VM_MAP ;
 int __free_page (int ) ;
 int alloc_page (int ) ;
 int memset (void*,int ,size_t) ;
 int * relay_alloc_page_array (unsigned int) ;
 int relay_free_page_array (int *) ;
 int set_page_private (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;
 void* vmap (int *,unsigned int,int ,int ) ;

__attribute__((used)) static void *relay_alloc_buf(struct rchan_buf *buf, size_t *size)
{
 void *mem;
 unsigned int i, j, n_pages;

 *size = PAGE_ALIGN(*size);
 n_pages = *size >> PAGE_SHIFT;

 buf->page_array = relay_alloc_page_array(n_pages);
 if (!buf->page_array)
  return ((void*)0);

 for (i = 0; i < n_pages; i++) {
  buf->page_array[i] = alloc_page(GFP_KERNEL);
  if (unlikely(!buf->page_array[i]))
   goto depopulate;
  set_page_private(buf->page_array[i], (unsigned long)buf);
 }
 mem = vmap(buf->page_array, n_pages, VM_MAP, PAGE_KERNEL);
 if (!mem)
  goto depopulate;

 memset(mem, 0, *size);
 buf->page_count = n_pages;
 return mem;

depopulate:
 for (j = 0; j < i; j++)
  __free_page(buf->page_array[j]);
 relay_free_page_array(buf->page_array);
 return ((void*)0);
}
