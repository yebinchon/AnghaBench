
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dio_write_ctxt {int dw_writer_pid; scalar_t__ dw_orphaned; scalar_t__ dw_zero_count; int dw_zero_list; } ;
struct buffer_head {struct ocfs2_dio_write_ctxt* b_private; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int current ;
 struct ocfs2_dio_write_ctxt* kmalloc (int,int ) ;
 int task_pid_nr (int ) ;

__attribute__((used)) static struct ocfs2_dio_write_ctxt *
ocfs2_dio_alloc_write_ctx(struct buffer_head *bh, int *alloc)
{
 struct ocfs2_dio_write_ctxt *dwc = ((void*)0);

 if (bh->b_private)
  return bh->b_private;

 dwc = kmalloc(sizeof(struct ocfs2_dio_write_ctxt), GFP_NOFS);
 if (dwc == ((void*)0))
  return ((void*)0);
 INIT_LIST_HEAD(&dwc->dw_zero_list);
 dwc->dw_zero_count = 0;
 dwc->dw_orphaned = 0;
 dwc->dw_writer_pid = task_pid_nr(current);
 bh->b_private = dwc;
 *alloc = 1;

 return dwc;
}
