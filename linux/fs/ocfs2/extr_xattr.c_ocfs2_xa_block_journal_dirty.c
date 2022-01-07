
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xa_loc {struct buffer_head* xl_storage; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int ocfs2_journal_dirty (int *,struct buffer_head*) ;

__attribute__((used)) static void ocfs2_xa_block_journal_dirty(handle_t *handle,
      struct ocfs2_xa_loc *loc)
{
 struct buffer_head *bh = loc->xl_storage;

 ocfs2_journal_dirty(handle, bh);
}
