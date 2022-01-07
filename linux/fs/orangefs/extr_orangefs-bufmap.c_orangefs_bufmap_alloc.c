
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct orangefs_bufmap_desc {int dummy; } ;
struct orangefs_bufmap {int total_size; int desc_count; int page_count; struct orangefs_bufmap* buffer_index_array; struct orangefs_bufmap* desc_array; void* page_array; int desc_size; int desc_shift; } ;
struct ORANGEFS_dev_map_desc {int total_size; int count; int size; } ;


 int BITS_PER_LONG ;
 int DIV_ROUND_UP (int,int ) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int ilog2 (int ) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct orangefs_bufmap*) ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static struct orangefs_bufmap *
orangefs_bufmap_alloc(struct ORANGEFS_dev_map_desc *user_desc)
{
 struct orangefs_bufmap *bufmap;

 bufmap = kzalloc(sizeof(*bufmap), GFP_KERNEL);
 if (!bufmap)
  goto out;

 bufmap->total_size = user_desc->total_size;
 bufmap->desc_count = user_desc->count;
 bufmap->desc_size = user_desc->size;
 bufmap->desc_shift = ilog2(bufmap->desc_size);

 bufmap->buffer_index_array =
  kzalloc(DIV_ROUND_UP(bufmap->desc_count, BITS_PER_LONG), GFP_KERNEL);
 if (!bufmap->buffer_index_array)
  goto out_free_bufmap;

 bufmap->desc_array =
  kcalloc(bufmap->desc_count, sizeof(struct orangefs_bufmap_desc),
   GFP_KERNEL);
 if (!bufmap->desc_array)
  goto out_free_index_array;

 bufmap->page_count = bufmap->total_size / PAGE_SIZE;


 bufmap->page_array =
  kcalloc(bufmap->page_count, sizeof(struct page *), GFP_KERNEL);
 if (!bufmap->page_array)
  goto out_free_desc_array;

 return bufmap;

out_free_desc_array:
 kfree(bufmap->desc_array);
out_free_index_array:
 kfree(bufmap->buffer_index_array);
out_free_bufmap:
 kfree(bufmap);
out:
 return ((void*)0);
}
