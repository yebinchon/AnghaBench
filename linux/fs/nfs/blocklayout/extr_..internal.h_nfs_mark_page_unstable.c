
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_commit_info {int dreq; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int wb; } ;
struct TYPE_3__ {struct inode* host; } ;


 int I_DIRTY_DATASYNC ;
 int NR_UNSTABLE_NFS ;
 int WB_RECLAIMABLE ;
 int __mark_inode_dirty (struct inode*,int ) ;
 int inc_node_page_state (struct page*,int ) ;
 int inc_wb_stat (int *,int ) ;
 TYPE_2__* inode_to_bdi (struct inode*) ;
 TYPE_1__* page_file_mapping (struct page*) ;

__attribute__((used)) static inline
void nfs_mark_page_unstable(struct page *page, struct nfs_commit_info *cinfo)
{
 if (!cinfo->dreq) {
  struct inode *inode = page_file_mapping(page)->host;

  inc_node_page_state(page, NR_UNSTABLE_NFS);
  inc_wb_stat(&inode_to_bdi(inode)->wb, WB_RECLAIMABLE);
  __mark_inode_dirty(inode, I_DIRTY_DATASYNC);
 }
}
