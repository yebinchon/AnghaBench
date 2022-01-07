
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int IS_ERR (char*) ;
 int NFS_PATH_CANONICAL ;
 char* nfs_path (char**,struct dentry*,char*,int ,int ) ;
 char* nfs_path_component (char*,char*) ;

__attribute__((used)) static char *nfs4_path(struct dentry *dentry, char *buffer, ssize_t buflen)
{
 char *limit;
 char *path = nfs_path(&limit, dentry, buffer, buflen,
         NFS_PATH_CANONICAL);
 if (!IS_ERR(path)) {
  char *path_component = nfs_path_component(path, limit);
  if (path_component)
   return path_component;
 }
 return path;
}
