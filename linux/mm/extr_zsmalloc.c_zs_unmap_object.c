
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct zs_pool {struct size_class** size_class; } ;
struct size_class {unsigned int size; } ;
struct page {int dummy; } ;
struct mapping_area {int vm_addr; } ;
typedef enum fullness_group { ____Placeholder_fullness_group } fullness_group ;


 int BUG_ON (int) ;
 unsigned int PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 int __zs_unmap_object (struct mapping_area*,struct page**,unsigned long,unsigned long) ;
 struct page* get_next_page (struct page*) ;
 struct zspage* get_zspage (struct page*) ;
 int get_zspage_mapping (struct zspage*,unsigned int*,int*) ;
 unsigned long handle_to_obj (unsigned long) ;
 int kunmap_atomic (int ) ;
 int migrate_read_unlock (struct zspage*) ;
 int obj_to_location (unsigned long,struct page**,unsigned int*) ;
 int put_cpu_var (int ) ;
 struct mapping_area* this_cpu_ptr (int *) ;
 int unpin_tag (unsigned long) ;
 int zs_map_area ;

void zs_unmap_object(struct zs_pool *pool, unsigned long handle)
{
 struct zspage *zspage;
 struct page *page;
 unsigned long obj, off;
 unsigned int obj_idx;

 unsigned int class_idx;
 enum fullness_group fg;
 struct size_class *class;
 struct mapping_area *area;

 obj = handle_to_obj(handle);
 obj_to_location(obj, &page, &obj_idx);
 zspage = get_zspage(page);
 get_zspage_mapping(zspage, &class_idx, &fg);
 class = pool->size_class[class_idx];
 off = (class->size * obj_idx) & ~PAGE_MASK;

 area = this_cpu_ptr(&zs_map_area);
 if (off + class->size <= PAGE_SIZE)
  kunmap_atomic(area->vm_addr);
 else {
  struct page *pages[2];

  pages[0] = page;
  pages[1] = get_next_page(page);
  BUG_ON(!pages[1]);

  __zs_unmap_object(area, pages, off, class->size);
 }
 put_cpu_var(zs_map_area);

 migrate_read_unlock(zspage);
 unpin_tag(handle);
}
