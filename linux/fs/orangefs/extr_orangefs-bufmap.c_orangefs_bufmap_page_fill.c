
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orangefs_bufmap_desc {int * page_array; } ;
struct TYPE_2__ {struct orangefs_bufmap_desc* desc_array; } ;


 int PAGE_SIZE ;
 TYPE_1__* __orangefs_bufmap ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,int ) ;

void orangefs_bufmap_page_fill(void *page_to,
    int buffer_index,
    int slot_index)
{
 struct orangefs_bufmap_desc *from;
 void *page_from;

 from = &__orangefs_bufmap->desc_array[buffer_index];
 page_from = kmap_atomic(from->page_array[slot_index]);
 memcpy(page_to, page_from, PAGE_SIZE);
 kunmap_atomic(page_from);
}
