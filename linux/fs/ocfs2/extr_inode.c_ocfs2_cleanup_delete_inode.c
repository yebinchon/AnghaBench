
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_data; int i_mapping; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int filemap_write_and_wait (int ) ;
 int trace_ocfs2_cleanup_delete_inode (unsigned long long,int) ;
 int truncate_inode_pages_final (int *) ;

__attribute__((used)) static void ocfs2_cleanup_delete_inode(struct inode *inode,
           int sync_data)
{
 trace_ocfs2_cleanup_delete_inode(
  (unsigned long long)OCFS2_I(inode)->ip_blkno, sync_data);
 if (sync_data)
  filemap_write_and_wait(inode->i_mapping);
 truncate_inode_pages_final(&inode->i_data);
}
