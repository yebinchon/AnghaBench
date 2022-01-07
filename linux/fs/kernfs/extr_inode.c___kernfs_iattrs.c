
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {struct kernfs_iattrs* iattr; } ;
struct kernfs_iattrs {int xattrs; int ia_atime; int ia_ctime; int ia_mtime; int ia_gid; int ia_uid; } ;
typedef int DEFINE_MUTEX ;


 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int kernfs_iattrs_cache ;
 struct kernfs_iattrs* kmem_cache_zalloc (int ,int ) ;
 int ktime_get_real_ts64 (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_xattrs_init (int *) ;

__attribute__((used)) static struct kernfs_iattrs *__kernfs_iattrs(struct kernfs_node *kn, int alloc)
{
 static DEFINE_MUTEX(iattr_mutex);
 struct kernfs_iattrs *ret;

 mutex_lock(&iattr_mutex);

 if (kn->iattr || !alloc)
  goto out_unlock;

 kn->iattr = kmem_cache_zalloc(kernfs_iattrs_cache, GFP_KERNEL);
 if (!kn->iattr)
  goto out_unlock;


 kn->iattr->ia_uid = GLOBAL_ROOT_UID;
 kn->iattr->ia_gid = GLOBAL_ROOT_GID;

 ktime_get_real_ts64(&kn->iattr->ia_atime);
 kn->iattr->ia_mtime = kn->iattr->ia_atime;
 kn->iattr->ia_ctime = kn->iattr->ia_atime;

 simple_xattrs_init(&kn->iattr->xattrs);
out_unlock:
 ret = kn->iattr;
 mutex_unlock(&iattr_mutex);
 return ret;
}
