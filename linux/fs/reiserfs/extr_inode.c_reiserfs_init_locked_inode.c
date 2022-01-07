
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_iget_args {int dirid; int objectid; } ;
struct inode {int i_ino; } ;
struct TYPE_2__ {int k_dir_id; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 int cpu_to_le32 (int ) ;

int reiserfs_init_locked_inode(struct inode *inode, void *p)
{
 struct reiserfs_iget_args *args = (struct reiserfs_iget_args *)p;
 inode->i_ino = args->objectid;
 INODE_PKEY(inode)->k_dir_id = cpu_to_le32(args->dirid);
 return 0;
}
