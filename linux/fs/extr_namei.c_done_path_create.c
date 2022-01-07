
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int mnt; TYPE_1__* dentry; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int d_inode; } ;


 int dput (struct dentry*) ;
 int inode_unlock (int ) ;
 int mnt_drop_write (int ) ;
 int path_put (struct path*) ;

void done_path_create(struct path *path, struct dentry *dentry)
{
 dput(dentry);
 inode_unlock(path->dentry->d_inode);
 mnt_drop_write(path->mnt);
 path_put(path);
}
