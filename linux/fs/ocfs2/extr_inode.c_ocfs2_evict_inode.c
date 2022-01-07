
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; int i_nlink; } ;
struct TYPE_2__ {int ip_flags; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_MAYBE_ORPHANED ;
 int ocfs2_clear_inode (struct inode*) ;
 int ocfs2_delete_inode (struct inode*) ;
 int truncate_inode_pages_final (int *) ;

void ocfs2_evict_inode(struct inode *inode)
{
 if (!inode->i_nlink ||
     (OCFS2_I(inode)->ip_flags & OCFS2_INODE_MAYBE_ORPHANED)) {
  ocfs2_delete_inode(inode);
 } else {
  truncate_inode_pages_final(&inode->i_data);
 }
 ocfs2_clear_inode(inode);
}
