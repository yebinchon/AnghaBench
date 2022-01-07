
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_type; } ;
typedef int errmsg ;


 scalar_t__ BPF_FS_MAGIC ;
 int EINVAL ;
 int ENOMEM ;
 int STRERR_BUFSIZE ;
 char* dirname (char*) ;
 int errno ;
 int free (char*) ;
 char* libbpf_strerror_r (int,char*,int) ;
 int pr_warning (char*,char const*,...) ;
 scalar_t__ statfs (char*,struct statfs*) ;
 char* strdup (char const*) ;

__attribute__((used)) static int check_path(const char *path)
{
 char *cp, errmsg[STRERR_BUFSIZE];
 struct statfs st_fs;
 char *dname, *dir;
 int err = 0;

 if (path == ((void*)0))
  return -EINVAL;

 dname = strdup(path);
 if (dname == ((void*)0))
  return -ENOMEM;

 dir = dirname(dname);
 if (statfs(dir, &st_fs)) {
  cp = libbpf_strerror_r(errno, errmsg, sizeof(errmsg));
  pr_warning("failed to statfs %s: %s\n", dir, cp);
  err = -errno;
 }
 free(dname);

 if (!err && st_fs.f_type != BPF_FS_MAGIC) {
  pr_warning("specified path %s is not on BPF FS\n", path);
  err = -EINVAL;
 }

 return err;
}
