
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int i_fsnotify_mask; struct dentry* dentry; } ;
struct name_snapshot {int name; } ;
typedef struct inode {int i_fsnotify_mask; struct dentry* dentry; } const inode ;
struct dentry {int d_flags; struct path const* d_inode; } ;
typedef int __u32 ;


 int ALL_FSNOTIFY_EVENTS ;
 int DCACHE_FSNOTIFY_PARENT_WATCHED ;
 int FSNOTIFY_EVENT_INODE ;
 int FSNOTIFY_EVENT_PATH ;
 int FS_EVENT_ON_CHILD ;
 int __fsnotify_update_child_dentry_flags (struct path const*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify (struct path const*,int,struct path const*,int ,int *,int ) ;
 int fsnotify_inode_watches_children (struct path const*) ;
 int release_dentry_name_snapshot (struct name_snapshot*) ;
 int take_dentry_name_snapshot (struct name_snapshot*,struct dentry*) ;
 scalar_t__ unlikely (int) ;

int __fsnotify_parent(const struct path *path, struct dentry *dentry, __u32 mask)
{
 struct dentry *parent;
 struct inode *p_inode;
 int ret = 0;

 if (!dentry)
  dentry = path->dentry;

 if (!(dentry->d_flags & DCACHE_FSNOTIFY_PARENT_WATCHED))
  return 0;

 parent = dget_parent(dentry);
 p_inode = parent->d_inode;

 if (unlikely(!fsnotify_inode_watches_children(p_inode))) {
  __fsnotify_update_child_dentry_flags(p_inode);
 } else if (p_inode->i_fsnotify_mask & mask & ALL_FSNOTIFY_EVENTS) {
  struct name_snapshot name;



  mask |= FS_EVENT_ON_CHILD;

  take_dentry_name_snapshot(&name, dentry);
  if (path)
   ret = fsnotify(p_inode, mask, path, FSNOTIFY_EVENT_PATH,
           &name.name, 0);
  else
   ret = fsnotify(p_inode, mask, dentry->d_inode, FSNOTIFY_EVENT_INODE,
           &name.name, 0);
  release_dentry_name_snapshot(&name);
 }

 dput(parent);

 return ret;
}
