
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {int dummy; } ;
struct zs_compact_control {int obj_idx; struct page* s_page; struct page* d_page; } ;
struct size_class {int dummy; } ;
struct page {int dummy; } ;


 unsigned long BIT (int ) ;
 int ENOMEM ;
 int HANDLE_PIN_BIT ;
 unsigned long find_alloced_obj (struct size_class*,struct page*,int*) ;
 struct page* get_next_page (struct page*) ;
 int get_zspage (struct page*) ;
 unsigned long handle_to_obj (unsigned long) ;
 int obj_free (struct size_class*,unsigned long) ;
 unsigned long obj_malloc (struct size_class*,int ,unsigned long) ;
 int record_obj (unsigned long,unsigned long) ;
 int unpin_tag (unsigned long) ;
 int zs_object_copy (struct size_class*,unsigned long,unsigned long) ;
 scalar_t__ zspage_full (struct size_class*,int ) ;

__attribute__((used)) static int migrate_zspage(struct zs_pool *pool, struct size_class *class,
    struct zs_compact_control *cc)
{
 unsigned long used_obj, free_obj;
 unsigned long handle;
 struct page *s_page = cc->s_page;
 struct page *d_page = cc->d_page;
 int obj_idx = cc->obj_idx;
 int ret = 0;

 while (1) {
  handle = find_alloced_obj(class, s_page, &obj_idx);
  if (!handle) {
   s_page = get_next_page(s_page);
   if (!s_page)
    break;
   obj_idx = 0;
   continue;
  }


  if (zspage_full(class, get_zspage(d_page))) {
   unpin_tag(handle);
   ret = -ENOMEM;
   break;
  }

  used_obj = handle_to_obj(handle);
  free_obj = obj_malloc(class, get_zspage(d_page), handle);
  zs_object_copy(class, free_obj, used_obj);
  obj_idx++;






  free_obj |= BIT(HANDLE_PIN_BIT);
  record_obj(handle, free_obj);
  unpin_tag(handle);
  obj_free(class, used_obj);
 }


 cc->s_page = s_page;
 cc->obj_idx = obj_idx;

 return ret;
}
