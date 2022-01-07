
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int mnt; int dentry; } ;
struct mountpoint {int dummy; } ;
typedef struct mountpoint mount ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mountpoint*) ;
 int LOOKUP_AUTOMOUNT ;
 int LOOKUP_FOLLOW ;
 int PTR_ERR (struct mountpoint*) ;
 int UMOUNT_SYNC ;
 struct mountpoint* __do_loopback (struct path*,int) ;
 int check_mnt (struct mountpoint*) ;
 int graft_tree (struct mountpoint*,struct mountpoint*,struct mountpoint*) ;
 int kern_path (char const*,int,struct path*) ;
 struct mountpoint* lock_mount (struct path*) ;
 int lock_mount_hash () ;
 scalar_t__ mnt_ns_loop (int ) ;
 int path_put (struct path*) ;
 struct mountpoint* real_mount (int ) ;
 int umount_tree (struct mountpoint*,int ) ;
 int unlock_mount (struct mountpoint*) ;
 int unlock_mount_hash () ;

__attribute__((used)) static int do_loopback(struct path *path, const char *old_name,
    int recurse)
{
 struct path old_path;
 struct mount *mnt = ((void*)0), *parent;
 struct mountpoint *mp;
 int err;
 if (!old_name || !*old_name)
  return -EINVAL;
 err = kern_path(old_name, LOOKUP_FOLLOW|LOOKUP_AUTOMOUNT, &old_path);
 if (err)
  return err;

 err = -EINVAL;
 if (mnt_ns_loop(old_path.dentry))
  goto out;

 mp = lock_mount(path);
 if (IS_ERR(mp)) {
  err = PTR_ERR(mp);
  goto out;
 }

 parent = real_mount(path->mnt);
 if (!check_mnt(parent))
  goto out2;

 mnt = __do_loopback(&old_path, recurse);
 if (IS_ERR(mnt)) {
  err = PTR_ERR(mnt);
  goto out2;
 }

 err = graft_tree(mnt, parent, mp);
 if (err) {
  lock_mount_hash();
  umount_tree(mnt, UMOUNT_SYNC);
  unlock_mount_hash();
 }
out2:
 unlock_mount(mp);
out:
 path_put(&old_path);
 return err;
}
