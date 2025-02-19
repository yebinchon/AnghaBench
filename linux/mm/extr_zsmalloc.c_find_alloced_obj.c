
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct size_class {int size; } ;
struct page {int dummy; } ;


 unsigned long OBJ_ALLOCATED_TAG ;
 int PAGE_SIZE ;
 int get_first_obj_offset (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 unsigned long obj_to_head (struct page*,void*) ;
 scalar_t__ trypin_tag (unsigned long) ;

__attribute__((used)) static unsigned long find_alloced_obj(struct size_class *class,
     struct page *page, int *obj_idx)
{
 unsigned long head;
 int offset = 0;
 int index = *obj_idx;
 unsigned long handle = 0;
 void *addr = kmap_atomic(page);

 offset = get_first_obj_offset(page);
 offset += class->size * index;

 while (offset < PAGE_SIZE) {
  head = obj_to_head(page, addr + offset);
  if (head & OBJ_ALLOCATED_TAG) {
   handle = head & ~OBJ_ALLOCATED_TAG;
   if (trypin_tag(handle))
    break;
   handle = 0;
  }

  offset += class->size;
  index++;
 }

 kunmap_atomic(addr);

 *obj_idx = index;

 return handle;
}
