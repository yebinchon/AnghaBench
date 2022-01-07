
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_subversion {int owner; } ;


 int EAGAIN ;
 struct nfs_subversion* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct nfs_subversion*) ;
 struct nfs_subversion* find_nfs_version (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfs_version_mutex ;
 int request_module (char*,unsigned int) ;
 int try_module_get (int ) ;

struct nfs_subversion *get_nfs_version(unsigned int version)
{
 struct nfs_subversion *nfs = find_nfs_version(version);

 if (IS_ERR(nfs)) {
  mutex_lock(&nfs_version_mutex);
  request_module("nfsv%d", version);
  nfs = find_nfs_version(version);
  mutex_unlock(&nfs_version_mutex);
 }

 if (!IS_ERR(nfs) && !try_module_get(nfs->owner))
  return ERR_PTR(-EAGAIN);
 return nfs;
}
