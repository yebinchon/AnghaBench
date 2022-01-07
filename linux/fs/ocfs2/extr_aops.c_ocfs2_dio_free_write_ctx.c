
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dio_write_ctxt {int dw_zero_list; } ;
struct inode {int dummy; } ;


 int kfree (struct ocfs2_dio_write_ctxt*) ;
 int ocfs2_free_unwritten_list (struct inode*,int *) ;

__attribute__((used)) static void ocfs2_dio_free_write_ctx(struct inode *inode,
         struct ocfs2_dio_write_ctxt *dwc)
{
 ocfs2_free_unwritten_list(inode, &dwc->dw_zero_list);
 kfree(dwc);
}
