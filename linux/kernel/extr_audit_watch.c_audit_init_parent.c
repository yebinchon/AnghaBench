
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct path {int dentry; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int mask; } ;
struct audit_parent {TYPE_1__ mark; int watches; } ;


 int AUDIT_FS_WATCH ;
 int ENOMEM ;
 struct audit_parent* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int audit_free_parent (struct audit_parent*) ;
 int audit_watch_group ;
 struct inode* d_backing_inode (int ) ;
 int fsnotify_add_inode_mark (TYPE_1__*,struct inode*,int ) ;
 int fsnotify_init_mark (TYPE_1__*,int ) ;
 struct audit_parent* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct audit_parent *audit_init_parent(struct path *path)
{
 struct inode *inode = d_backing_inode(path->dentry);
 struct audit_parent *parent;
 int ret;

 parent = kzalloc(sizeof(*parent), GFP_KERNEL);
 if (unlikely(!parent))
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&parent->watches);

 fsnotify_init_mark(&parent->mark, audit_watch_group);
 parent->mark.mask = AUDIT_FS_WATCH;
 ret = fsnotify_add_inode_mark(&parent->mark, inode, 0);
 if (ret < 0) {
  audit_free_parent(parent);
  return ERR_PTR(ret);
 }

 return parent;
}
