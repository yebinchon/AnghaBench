
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {void* d_fsdata; } ;



__attribute__((used)) static inline void vfat_d_version_set(struct dentry *dentry,
          unsigned long version)
{
 dentry->d_fsdata = (void *) version;
}
