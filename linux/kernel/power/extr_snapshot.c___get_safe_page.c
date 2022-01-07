
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gfp_t ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int PAGE_SIZE ;
 int PG_SAFE ;
 void* get_image_page (int ,int ) ;
 int memset (void*,int ,int ) ;
 TYPE_1__* safe_pages_list ;

__attribute__((used)) static void *__get_safe_page(gfp_t gfp_mask)
{
 if (safe_pages_list) {
  void *ret = safe_pages_list;

  safe_pages_list = safe_pages_list->next;
  memset(ret, 0, PAGE_SIZE);
  return ret;
 }
 return get_image_page(gfp_mask, PG_SAFE);
}
