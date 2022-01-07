
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_inode {int * i_nid; } ;
struct dnode_of_data {int node_changed; int inode; void* nid; struct page* node_page; } ;
typedef void* nid_t ;


 int F2FS_I_SB (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 int NIDS_PER_BLOCK ;
 int NODE_DIR1_BLOCK ;
 int PTR_ERR (struct page*) ;
 struct page* f2fs_get_node_page (int ,void*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_ra_node_pages (struct page*,int,int) ;
 void* get_nid (struct page*,int,int) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ set_nid (struct page*,int,int ,int) ;
 int trace_f2fs_truncate_partial_nodes (int ,void**,int,int) ;
 int truncate_dnode (struct dnode_of_data*) ;
 int truncate_node (struct dnode_of_data*) ;

__attribute__((used)) static int truncate_partial_nodes(struct dnode_of_data *dn,
   struct f2fs_inode *ri, int *offset, int depth)
{
 struct page *pages[2];
 nid_t nid[3];
 nid_t child_nid;
 int err = 0;
 int i;
 int idx = depth - 2;

 nid[0] = le32_to_cpu(ri->i_nid[offset[0] - NODE_DIR1_BLOCK]);
 if (!nid[0])
  return 0;


 for (i = 0; i < idx + 1; i++) {

  pages[i] = f2fs_get_node_page(F2FS_I_SB(dn->inode), nid[i]);
  if (IS_ERR(pages[i])) {
   err = PTR_ERR(pages[i]);
   idx = i - 1;
   goto fail;
  }
  nid[i + 1] = get_nid(pages[i], offset[i + 1], 0);
 }

 f2fs_ra_node_pages(pages[idx], offset[idx + 1], NIDS_PER_BLOCK);


 for (i = offset[idx + 1]; i < NIDS_PER_BLOCK; i++) {
  child_nid = get_nid(pages[idx], i, 0);
  if (!child_nid)
   continue;
  dn->nid = child_nid;
  err = truncate_dnode(dn);
  if (err < 0)
   goto fail;
  if (set_nid(pages[idx], i, 0, 0))
   dn->node_changed = 1;
 }

 if (offset[idx + 1] == 0) {
  dn->node_page = pages[idx];
  dn->nid = nid[idx];
  err = truncate_node(dn);
  if (err)
   goto fail;
 } else {
  f2fs_put_page(pages[idx], 1);
 }
 offset[idx]++;
 offset[idx + 1] = 0;
 idx--;
fail:
 for (i = idx; i >= 0; i--)
  f2fs_put_page(pages[i], 1);

 trace_f2fs_truncate_partial_nodes(dn->inode, nid, depth, err);

 return err;
}
