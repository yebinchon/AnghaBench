
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct size_class {unsigned int size; } ;
struct page {int dummy; } ;
struct link_free {int next; } ;


 unsigned long OBJ_ALLOCATED_TAG ;
 int OBJ_TAG_BITS ;
 int OBJ_USED ;
 unsigned int PAGE_MASK ;
 int get_freeobj (struct zspage*) ;
 struct zspage* get_zspage (struct page*) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int mod_zspage_inuse (struct zspage*,int) ;
 int obj_to_location (unsigned long,struct page**,unsigned int*) ;
 int set_freeobj (struct zspage*,unsigned int) ;
 int zs_stat_dec (struct size_class*,int ,int) ;

__attribute__((used)) static void obj_free(struct size_class *class, unsigned long obj)
{
 struct link_free *link;
 struct zspage *zspage;
 struct page *f_page;
 unsigned long f_offset;
 unsigned int f_objidx;
 void *vaddr;

 obj &= ~OBJ_ALLOCATED_TAG;
 obj_to_location(obj, &f_page, &f_objidx);
 f_offset = (class->size * f_objidx) & ~PAGE_MASK;
 zspage = get_zspage(f_page);

 vaddr = kmap_atomic(f_page);


 link = (struct link_free *)(vaddr + f_offset);
 link->next = get_freeobj(zspage) << OBJ_TAG_BITS;
 kunmap_atomic(vaddr);
 set_freeobj(zspage, f_objidx);
 mod_zspage_inuse(zspage, -1);
 zs_stat_dec(class, OBJ_USED, 1);
}
