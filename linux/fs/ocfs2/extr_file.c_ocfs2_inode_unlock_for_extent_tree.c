
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void ocfs2_inode_unlock_for_extent_tree(struct inode *inode,
            struct buffer_head **di_bh,
            int meta_level,
            int write_sem)
{
 if (write_sem)
  up_write(&OCFS2_I(inode)->ip_alloc_sem);
 else
  up_read(&OCFS2_I(inode)->ip_alloc_sem);

 brelse(*di_bh);
 *di_bh = ((void*)0);

 if (meta_level >= 0)
  ocfs2_inode_unlock(inode, meta_level);
}
