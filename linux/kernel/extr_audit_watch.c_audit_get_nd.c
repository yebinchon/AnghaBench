
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {struct dentry* dentry; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct audit_watch {int ino; int dev; int path; } ;
struct TYPE_5__ {int i_ino; } ;
struct TYPE_4__ {int s_dev; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 TYPE_2__* d_backing_inode (struct dentry*) ;
 scalar_t__ d_is_positive (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_unlock (TYPE_2__*) ;
 struct dentry* kern_path_locked (int ,struct path*) ;

__attribute__((used)) static int audit_get_nd(struct audit_watch *watch, struct path *parent)
{
 struct dentry *d = kern_path_locked(watch->path, parent);
 if (IS_ERR(d))
  return PTR_ERR(d);
 inode_unlock(d_backing_inode(parent->dentry));
 if (d_is_positive(d)) {

  watch->dev = d->d_sb->s_dev;
  watch->ino = d_backing_inode(d)->i_ino;
 }
 dput(d);
 return 0;
}
