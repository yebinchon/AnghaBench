
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; TYPE_1__* i_sb; int i_data; } ;
struct fuse_inode {int queued_writes; int write_files; int * forget; int nlookup; int nodeid; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;


 int SB_ACTIVE ;
 scalar_t__ S_ISREG (int ) ;
 int WARN_ON (int) ;
 int clear_inode (struct inode*) ;
 int fuse_queue_forget (struct fuse_conn*,int *,int ,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int list_empty (int *) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void fuse_evict_inode(struct inode *inode)
{
 struct fuse_inode *fi = get_fuse_inode(inode);

 truncate_inode_pages_final(&inode->i_data);
 clear_inode(inode);
 if (inode->i_sb->s_flags & SB_ACTIVE) {
  struct fuse_conn *fc = get_fuse_conn(inode);
  fuse_queue_forget(fc, fi->forget, fi->nodeid, fi->nlookup);
  fi->forget = ((void*)0);
 }
 if (S_ISREG(inode->i_mode) && !is_bad_inode(inode)) {
  WARN_ON(!list_empty(&fi->write_files));
  WARN_ON(!list_empty(&fi->queued_writes));
 }
}
