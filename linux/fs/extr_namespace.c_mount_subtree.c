
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct super_block* mnt_sb; int mnt_root; } ;
struct super_block {int s_umount; int s_active; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct mount {int mnt_list; struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int list; int mounts; struct mount* root; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_CAST (struct mnt_namespace*) ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mnt_namespace*) ;
 int LOOKUP_AUTOMOUNT ;
 int LOOKUP_FOLLOW ;
 struct mnt_namespace* alloc_mnt_ns (int *,int) ;
 int atomic_inc (int *) ;
 int down_write (int *) ;
 int init_user_ns ;
 int list_add (int *,int *) ;
 int mntput (struct vfsmount*) ;
 int put_mnt_ns (struct mnt_namespace*) ;
 struct mount* real_mount (struct vfsmount*) ;
 int vfs_path_lookup (int ,struct vfsmount*,char const*,int,struct path*) ;

struct dentry *mount_subtree(struct vfsmount *m, const char *name)
{
 struct mount *mnt = real_mount(m);
 struct mnt_namespace *ns;
 struct super_block *s;
 struct path path;
 int err;

 ns = alloc_mnt_ns(&init_user_ns, 1);
 if (IS_ERR(ns)) {
  mntput(m);
  return ERR_CAST(ns);
 }
 mnt->mnt_ns = ns;
 ns->root = mnt;
 ns->mounts++;
 list_add(&mnt->mnt_list, &ns->list);

 err = vfs_path_lookup(m->mnt_root, m,
   name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &path);

 put_mnt_ns(ns);

 if (err)
  return ERR_PTR(err);


 s = path.mnt->mnt_sb;
 atomic_inc(&s->s_active);
 mntput(path.mnt);

 down_write(&s->s_umount);

 return path.dentry;
}
