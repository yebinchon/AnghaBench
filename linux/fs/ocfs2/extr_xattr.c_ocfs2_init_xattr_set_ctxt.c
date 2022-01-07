
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_set_ctxt {int * meta_ac; int data_ac; int dealloc; } ;
struct ocfs2_xattr_search {int dummy; } ;
struct ocfs2_xattr_info {int xi_name; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_sb; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 int memset (struct ocfs2_xattr_set_ctxt*,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_calc_xattr_set_need (struct inode*,struct ocfs2_dinode*,struct ocfs2_xattr_info*,struct ocfs2_xattr_search*,struct ocfs2_xattr_search*,int*,int*,int*) ;
 int ocfs2_free_alloc_context (int *) ;
 int ocfs2_init_dealloc_ctxt (int *) ;
 int ocfs2_reserve_clusters (struct ocfs2_super*,int,int *) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,int,int **) ;
 int trace_ocfs2_init_xattr_set_ctxt (int ,int,int,int) ;

__attribute__((used)) static int ocfs2_init_xattr_set_ctxt(struct inode *inode,
         struct ocfs2_dinode *di,
         struct ocfs2_xattr_info *xi,
         struct ocfs2_xattr_search *xis,
         struct ocfs2_xattr_search *xbs,
         struct ocfs2_xattr_set_ctxt *ctxt,
         int extra_meta,
         int *credits)
{
 int clusters_add, meta_add, ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 memset(ctxt, 0, sizeof(struct ocfs2_xattr_set_ctxt));

 ocfs2_init_dealloc_ctxt(&ctxt->dealloc);

 ret = ocfs2_calc_xattr_set_need(inode, di, xi, xis, xbs,
     &clusters_add, &meta_add, credits);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 meta_add += extra_meta;
 trace_ocfs2_init_xattr_set_ctxt(xi->xi_name, meta_add,
     clusters_add, *credits);

 if (meta_add) {
  ret = ocfs2_reserve_new_metadata_blocks(osb, meta_add,
       &ctxt->meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (clusters_add) {
  ret = ocfs2_reserve_clusters(osb, clusters_add, &ctxt->data_ac);
  if (ret)
   mlog_errno(ret);
 }
out:
 if (ret) {
  if (ctxt->meta_ac) {
   ocfs2_free_alloc_context(ctxt->meta_ac);
   ctxt->meta_ac = ((void*)0);
  }




 }

 return ret;
}
