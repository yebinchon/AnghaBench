
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int loff_t ;
typedef int get_block_t ;


 int __block_write_begin_int (struct page*,int ,unsigned int,int *,int *) ;

int __block_write_begin(struct page *page, loff_t pos, unsigned len,
  get_block_t *get_block)
{
 return __block_write_begin_int(page, pos, len, get_block, ((void*)0));
}
