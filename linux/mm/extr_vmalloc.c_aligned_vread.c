
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_SIZE ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (char*,void*,unsigned long) ;
 int memset (char*,int ,unsigned long) ;
 unsigned long offset_in_page (char*) ;
 struct page* vmalloc_to_page (char*) ;

__attribute__((used)) static int aligned_vread(char *buf, char *addr, unsigned long count)
{
 struct page *p;
 int copied = 0;

 while (count) {
  unsigned long offset, length;

  offset = offset_in_page(addr);
  length = PAGE_SIZE - offset;
  if (length > count)
   length = count;
  p = vmalloc_to_page(addr);







  if (p) {




   void *map = kmap_atomic(p);
   memcpy(buf, map + offset, length);
   kunmap_atomic(map);
  } else
   memset(buf, 0, length);

  addr += length;
  buf += length;
  copied += length;
  count -= length;
 }
 return copied;
}
