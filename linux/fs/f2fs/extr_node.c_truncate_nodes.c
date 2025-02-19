
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int * nid; } ;
struct f2fs_node {TYPE_1__ in; } ;
struct dnode_of_data {scalar_t__ nid; int node_changed; int inode; struct page* node_page; int data_blkaddr; } ;
typedef scalar_t__ nid_t ;


 int ENOENT ;
 int F2FS_I_SB (int ) ;
 struct f2fs_node* F2FS_NODE (struct page*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int NIDS_PER_BLOCK ;
 int PTR_ERR (struct page*) ;
 struct page* f2fs_get_node_page (int ,scalar_t__) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_ra_node_pages (struct page*,int,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ set_nid (struct page*,int,int ,int) ;
 int trace_f2fs_truncate_nodes_enter (int ,scalar_t__,int ) ;
 int trace_f2fs_truncate_nodes_exit (int ,int) ;
 int truncate_dnode (struct dnode_of_data*) ;
 int truncate_node (struct dnode_of_data*) ;

__attribute__((used)) static int truncate_nodes(struct dnode_of_data *dn, unsigned int nofs,
      int ofs, int depth)
{
 struct dnode_of_data rdn = *dn;
 struct page *page;
 struct f2fs_node *rn;
 nid_t child_nid;
 unsigned int child_nofs;
 int freed = 0;
 int i, ret;

 if (dn->nid == 0)
  return NIDS_PER_BLOCK + 1;

 trace_f2fs_truncate_nodes_enter(dn->inode, dn->nid, dn->data_blkaddr);

 page = f2fs_get_node_page(F2FS_I_SB(dn->inode), dn->nid);
 if (IS_ERR(page)) {
  trace_f2fs_truncate_nodes_exit(dn->inode, PTR_ERR(page));
  return PTR_ERR(page);
 }

 f2fs_ra_node_pages(page, ofs, NIDS_PER_BLOCK);

 rn = F2FS_NODE(page);
 if (depth < 3) {
  for (i = ofs; i < NIDS_PER_BLOCK; i++, freed++) {
   child_nid = le32_to_cpu(rn->in.nid[i]);
   if (child_nid == 0)
    continue;
   rdn.nid = child_nid;
   ret = truncate_dnode(&rdn);
   if (ret < 0)
    goto out_err;
   if (set_nid(page, i, 0, 0))
    dn->node_changed = 1;
  }
 } else {
  child_nofs = nofs + ofs * (NIDS_PER_BLOCK + 1) + 1;
  for (i = ofs; i < NIDS_PER_BLOCK; i++) {
   child_nid = le32_to_cpu(rn->in.nid[i]);
   if (child_nid == 0) {
    child_nofs += NIDS_PER_BLOCK + 1;
    continue;
   }
   rdn.nid = child_nid;
   ret = truncate_nodes(&rdn, child_nofs, 0, depth - 1);
   if (ret == (NIDS_PER_BLOCK + 1)) {
    if (set_nid(page, i, 0, 0))
     dn->node_changed = 1;
    child_nofs += ret;
   } else if (ret < 0 && ret != -ENOENT) {
    goto out_err;
   }
  }
  freed = child_nofs;
 }

 if (!ofs) {

  dn->node_page = page;
  ret = truncate_node(dn);
  if (ret)
   goto out_err;
  freed++;
 } else {
  f2fs_put_page(page, 1);
 }
 trace_f2fs_truncate_nodes_exit(dn->inode, freed);
 return freed;

out_err:
 f2fs_put_page(page, 1);
 trace_f2fs_truncate_nodes_exit(dn->inode, ret);
 return ret;
}
