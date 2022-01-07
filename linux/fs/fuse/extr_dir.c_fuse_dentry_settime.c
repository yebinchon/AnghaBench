
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fuse_conn {scalar_t__ delete_stale; } ;
struct dentry {int d_flags; int d_lock; int d_sb; } ;


 int DCACHE_OP_DELETE ;
 int __fuse_dentry_settime (struct dentry*,int ) ;
 struct fuse_conn* get_fuse_conn_super (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_dentry_settime(struct dentry *dentry, u64 time)
{
 struct fuse_conn *fc = get_fuse_conn_super(dentry->d_sb);
 bool delete = !time && fc->delete_stale;




 if ((!delete && (dentry->d_flags & DCACHE_OP_DELETE)) ||
     (delete && !(dentry->d_flags & DCACHE_OP_DELETE))) {
  spin_lock(&dentry->d_lock);
  if (!delete)
   dentry->d_flags &= ~DCACHE_OP_DELETE;
  else
   dentry->d_flags |= DCACHE_OP_DELETE;
  spin_unlock(&dentry->d_lock);
 }

 __fuse_dentry_settime(dentry, time);
}
