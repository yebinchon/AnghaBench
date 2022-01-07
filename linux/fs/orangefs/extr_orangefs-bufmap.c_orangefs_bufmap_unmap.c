
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_bufmap {int page_count; int * page_array; } ;


 int put_page (int ) ;

__attribute__((used)) static void
orangefs_bufmap_unmap(struct orangefs_bufmap *bufmap)
{
 int i;

 for (i = 0; i < bufmap->page_count; i++)
  put_page(bufmap->page_array[i]);
}
