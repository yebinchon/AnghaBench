
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef scalar_t__ loff_t ;


 int __block_write_begin (struct page*,scalar_t__,unsigned int,int ) ;
 int nilfs_get_block ;
 scalar_t__ page_offset (struct page*) ;

__attribute__((used)) static int nilfs_prepare_chunk(struct page *page, unsigned int from,
          unsigned int to)
{
 loff_t pos = page_offset(page) + from;

 return __block_write_begin(page, pos, to - from, nilfs_get_block);
}
