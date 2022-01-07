
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_page {int entries; } ;


 unsigned long RB_WRITE_MASK ;
 unsigned long local_read (int *) ;

__attribute__((used)) static inline unsigned long rb_page_entries(struct buffer_page *bpage)
{
 return local_read(&bpage->entries) & RB_WRITE_MASK;
}
