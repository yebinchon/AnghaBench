
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct ovl_fs {int namelen; } ;
struct kstatfs {int f_namelen; } ;


 int max (int ,int ) ;
 int pr_err (char*,char const*) ;
 int vfs_statfs (struct path*,struct kstatfs*) ;

__attribute__((used)) static int ovl_check_namelen(struct path *path, struct ovl_fs *ofs,
        const char *name)
{
 struct kstatfs statfs;
 int err = vfs_statfs(path, &statfs);

 if (err)
  pr_err("overlayfs: statfs failed on '%s'\n", name);
 else
  ofs->namelen = max(ofs->namelen, statfs.f_namelen);

 return err;
}
