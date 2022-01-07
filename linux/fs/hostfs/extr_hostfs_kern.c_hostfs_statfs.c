
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kstatfs {long long f_blocks; long long f_bfree; long long f_bavail; long long f_files; long long f_ffree; int f_type; int f_namelen; int f_fsid; int f_bsize; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int s_fs_info; } ;


 int HOSTFS_SUPER_MAGIC ;
 int do_statfs (int ,int *,long long*,long long*,long long*,long long*,long long*,int *,int,int *) ;

__attribute__((used)) static int hostfs_statfs(struct dentry *dentry, struct kstatfs *sf)
{





 int err;
 long long f_blocks;
 long long f_bfree;
 long long f_bavail;
 long long f_files;
 long long f_ffree;

 err = do_statfs(dentry->d_sb->s_fs_info,
   &sf->f_bsize, &f_blocks, &f_bfree, &f_bavail, &f_files,
   &f_ffree, &sf->f_fsid, sizeof(sf->f_fsid),
   &sf->f_namelen);
 if (err)
  return err;
 sf->f_blocks = f_blocks;
 sf->f_bfree = f_bfree;
 sf->f_bavail = f_bavail;
 sf->f_files = f_files;
 sf->f_ffree = f_ffree;
 sf->f_type = HOSTFS_SUPER_MAGIC;
 return 0;
}
