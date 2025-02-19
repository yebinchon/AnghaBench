
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {int d_sb; } ;
struct TYPE_4__ {int idotdot; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
struct TYPE_6__ {TYPE_2__ i_dtroot; } ;


 TYPE_3__* JFS_IP (int ) ;
 int d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int jfs_iget (int ,unsigned long) ;
 unsigned long le32_to_cpu (int ) ;

struct dentry *jfs_get_parent(struct dentry *dentry)
{
 unsigned long parent_ino;

 parent_ino =
  le32_to_cpu(JFS_IP(d_inode(dentry))->i_dtroot.header.idotdot);

 return d_obtain_alias(jfs_iget(dentry->d_sb, parent_ino));
}
