
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_iget_args {scalar_t__ objectid; scalar_t__ dirid; } ;
struct inode {scalar_t__ i_ino; } ;
struct TYPE_2__ {int k_dir_id; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

int reiserfs_find_actor(struct inode *inode, void *opaque)
{
 struct reiserfs_iget_args *args;

 args = opaque;

 return (inode->i_ino == args->objectid) &&
     (le32_to_cpu(INODE_PKEY(inode)->k_dir_id) == args->dirid);
}
