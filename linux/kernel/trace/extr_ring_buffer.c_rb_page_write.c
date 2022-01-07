
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_page {int write; } ;


 unsigned long RB_WRITE_MASK ;
 unsigned long local_read (int *) ;

__attribute__((used)) static inline unsigned long rb_page_write(struct buffer_page *bpage)
{
 return local_read(&bpage->write) & RB_WRITE_MASK;
}
