
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_page {scalar_t__ page; } ;


 int free_page (unsigned long) ;
 int kfree (struct buffer_page*) ;

__attribute__((used)) static void free_buffer_page(struct buffer_page *bpage)
{
 free_page((unsigned long)bpage->page);
 kfree(bpage);
}
