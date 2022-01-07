
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int NFS_PATH_CANONICAL ;
 char* nfs_path (char**,struct dentry*,char*,int ,int ) ;

__attribute__((used)) static inline char *nfs_devname(struct dentry *dentry,
    char *buffer, ssize_t buflen)
{
 char *dummy;
 return nfs_path(&dummy, dentry, buffer, buflen, NFS_PATH_CANONICAL);
}
