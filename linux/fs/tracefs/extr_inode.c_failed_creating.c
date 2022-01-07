
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {int d_inode; } ;


 int dput (struct dentry*) ;
 int inode_unlock (int ) ;
 int simple_release_fs (int *,int *) ;
 int tracefs_mount ;
 int tracefs_mount_count ;

__attribute__((used)) static struct dentry *failed_creating(struct dentry *dentry)
{
 inode_unlock(dentry->d_parent->d_inode);
 dput(dentry);
 simple_release_fs(&tracefs_mount, &tracefs_mount_count);
 return ((void*)0);
}
