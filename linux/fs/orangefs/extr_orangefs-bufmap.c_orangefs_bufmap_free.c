
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_bufmap {struct orangefs_bufmap* buffer_index_array; struct orangefs_bufmap* desc_array; struct orangefs_bufmap* page_array; } ;


 int kfree (struct orangefs_bufmap*) ;

__attribute__((used)) static void
orangefs_bufmap_free(struct orangefs_bufmap *bufmap)
{
 kfree(bufmap->page_array);
 kfree(bufmap->desc_array);
 kfree(bufmap->buffer_index_array);
 kfree(bufmap);
}
