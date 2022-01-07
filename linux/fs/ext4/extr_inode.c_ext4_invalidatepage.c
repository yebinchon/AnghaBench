
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int WARN_ON (int) ;
 int block_invalidatepage (struct page*,unsigned int,unsigned int) ;
 scalar_t__ buffer_jbd (int ) ;
 int page_buffers (struct page*) ;
 scalar_t__ page_has_buffers (struct page*) ;
 int trace_ext4_invalidatepage (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static void ext4_invalidatepage(struct page *page, unsigned int offset,
    unsigned int length)
{
 trace_ext4_invalidatepage(page, offset, length);


 WARN_ON(page_has_buffers(page) && buffer_jbd(page_buffers(page)));

 block_invalidatepage(page, offset, length);
}
