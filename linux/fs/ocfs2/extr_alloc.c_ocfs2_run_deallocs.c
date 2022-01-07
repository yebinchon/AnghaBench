
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_per_slot_free_list {struct ocfs2_per_slot_free_list* f_next_suballocator; scalar_t__ f_first; int f_slot; int f_inode_type; } ;
struct ocfs2_cached_dealloc_ctxt {int * c_global_allocator; struct ocfs2_per_slot_free_list* c_first_suballocator; } ;


 int kfree (struct ocfs2_per_slot_free_list*) ;
 int mlog_errno (int) ;
 int ocfs2_free_cached_blocks (struct ocfs2_super*,int ,int ,scalar_t__) ;
 int ocfs2_free_cached_clusters (struct ocfs2_super*,int *) ;
 int trace_ocfs2_run_deallocs (int ,int ) ;

int ocfs2_run_deallocs(struct ocfs2_super *osb,
         struct ocfs2_cached_dealloc_ctxt *ctxt)
{
 int ret = 0, ret2;
 struct ocfs2_per_slot_free_list *fl;

 if (!ctxt)
  return 0;

 while (ctxt->c_first_suballocator) {
  fl = ctxt->c_first_suballocator;

  if (fl->f_first) {
   trace_ocfs2_run_deallocs(fl->f_inode_type,
       fl->f_slot);
   ret2 = ocfs2_free_cached_blocks(osb,
       fl->f_inode_type,
       fl->f_slot,
       fl->f_first);
   if (ret2)
    mlog_errno(ret2);
   if (!ret)
    ret = ret2;
  }

  ctxt->c_first_suballocator = fl->f_next_suballocator;
  kfree(fl);
 }

 if (ctxt->c_global_allocator) {
  ret2 = ocfs2_free_cached_clusters(osb,
        ctxt->c_global_allocator);
  if (ret2)
   mlog_errno(ret2);
  if (!ret)
   ret = ret2;

  ctxt->c_global_allocator = ((void*)0);
 }

 return ret;
}
