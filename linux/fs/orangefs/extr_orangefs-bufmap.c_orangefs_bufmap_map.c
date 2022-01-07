
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orangefs_bufmap {int desc_size; int page_count; int desc_count; TYPE_1__* desc_array; int * page_array; } ;
struct ORANGEFS_dev_map_desc {scalar_t__ ptr; } ;
struct TYPE_2__ {int array_count; scalar_t__ uaddr; int * page_array; } ;


 int ENOMEM ;
 int FOLL_WRITE ;
 int PAGE_SIZE ;
 int SetPageError (int ) ;
 int flush_dcache_page (int ) ;
 int get_user_pages_fast (unsigned long,int,int ,int *) ;
 int gossip_err (char*,int,int) ;
 int put_page (int ) ;

__attribute__((used)) static int
orangefs_bufmap_map(struct orangefs_bufmap *bufmap,
  struct ORANGEFS_dev_map_desc *user_desc)
{
 int pages_per_desc = bufmap->desc_size / PAGE_SIZE;
 int offset = 0, ret, i;


 ret = get_user_pages_fast((unsigned long)user_desc->ptr,
        bufmap->page_count, FOLL_WRITE, bufmap->page_array);

 if (ret < 0)
  return ret;

 if (ret != bufmap->page_count) {
  gossip_err("orangefs error: asked for %d pages, only got %d.\n",
    bufmap->page_count, ret);

  for (i = 0; i < ret; i++) {
   SetPageError(bufmap->page_array[i]);
   put_page(bufmap->page_array[i]);
  }
  return -ENOMEM;
 }







 for (i = 0; i < bufmap->page_count; i++)
  flush_dcache_page(bufmap->page_array[i]);


 for (offset = 0, i = 0; i < bufmap->desc_count; i++) {
  bufmap->desc_array[i].page_array = &bufmap->page_array[offset];
  bufmap->desc_array[i].array_count = pages_per_desc;
  bufmap->desc_array[i].uaddr =
      (user_desc->ptr + (i * pages_per_desc * PAGE_SIZE));
  offset += pages_per_desc;
 }

 return 0;
}
