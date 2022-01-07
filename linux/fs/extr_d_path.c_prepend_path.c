
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct dentry* mnt_root; } ;
struct path {struct vfsmount* mnt; struct dentry* dentry; } ;
struct mount {int mnt_ns; struct vfsmount mnt; int mnt_mountpoint; int mnt_parent; } ;
struct dentry {int d_name; struct dentry* d_parent; } ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ROOT (struct dentry*) ;
 void* READ_ONCE (int ) ;
 int done_seqretry (int *,unsigned int) ;
 int is_anon_ns (int ) ;
 scalar_t__ is_mounted (struct vfsmount*) ;
 int mount_lock ;
 scalar_t__ need_seqretry (int *,unsigned int) ;
 int prefetch (struct dentry*) ;
 int prepend_name (char**,int*,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_seqbegin_or_lock (int *,unsigned int*) ;
 struct mount* real_mount (struct vfsmount*) ;
 int rename_lock ;

__attribute__((used)) static int prepend_path(const struct path *path,
   const struct path *root,
   char **buffer, int *buflen)
{
 struct dentry *dentry;
 struct vfsmount *vfsmnt;
 struct mount *mnt;
 int error = 0;
 unsigned seq, m_seq = 0;
 char *bptr;
 int blen;

 rcu_read_lock();
restart_mnt:
 read_seqbegin_or_lock(&mount_lock, &m_seq);
 seq = 0;
 rcu_read_lock();
restart:
 bptr = *buffer;
 blen = *buflen;
 error = 0;
 dentry = path->dentry;
 vfsmnt = path->mnt;
 mnt = real_mount(vfsmnt);
 read_seqbegin_or_lock(&rename_lock, &seq);
 while (dentry != root->dentry || vfsmnt != root->mnt) {
  struct dentry * parent;

  if (dentry == vfsmnt->mnt_root || IS_ROOT(dentry)) {
   struct mount *parent = READ_ONCE(mnt->mnt_parent);

   if (dentry != vfsmnt->mnt_root) {
    bptr = *buffer;
    blen = *buflen;
    error = 3;
    break;
   }

   if (mnt != parent) {
    dentry = READ_ONCE(mnt->mnt_mountpoint);
    mnt = parent;
    vfsmnt = &mnt->mnt;
    continue;
   }
   if (is_mounted(vfsmnt) && !is_anon_ns(mnt->mnt_ns))
    error = 1;
   else
    error = 2;
   break;
  }
  parent = dentry->d_parent;
  prefetch(parent);
  error = prepend_name(&bptr, &blen, &dentry->d_name);
  if (error)
   break;

  dentry = parent;
 }
 if (!(seq & 1))
  rcu_read_unlock();
 if (need_seqretry(&rename_lock, seq)) {
  seq = 1;
  goto restart;
 }
 done_seqretry(&rename_lock, seq);

 if (!(m_seq & 1))
  rcu_read_unlock();
 if (need_seqretry(&mount_lock, m_seq)) {
  m_seq = 1;
  goto restart_mnt;
 }
 done_seqretry(&mount_lock, m_seq);

 if (error >= 0 && bptr == *buffer) {
  if (--blen < 0)
   error = -ENAMETOOLONG;
  else
   *--bptr = '/';
 }
 *buffer = bptr;
 *buflen = blen;
 return error;
}
