
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;
struct TYPE_3__ {int host; } ;


 TYPE_2__* OCFS2_I (int ) ;
 int block_write_full_page (struct page*,int ,struct writeback_control*) ;
 int ocfs2_get_block ;
 int trace_ocfs2_writepage (unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_writepage(struct page *page, struct writeback_control *wbc)
{
 trace_ocfs2_writepage(
  (unsigned long long)OCFS2_I(page->mapping->host)->ip_blkno,
  page->index);

 return block_write_full_page(page, ocfs2_get_block, wbc);
}
