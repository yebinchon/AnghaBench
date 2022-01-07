
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_type; } ;


 unsigned long BPF_FS_MAGIC ;
 scalar_t__ statfs (char*,struct statfs*) ;

__attribute__((used)) static bool is_bpffs(char *path)
{
 struct statfs st_fs;

 if (statfs(path, &st_fs) < 0)
  return 0;

 return (unsigned long)st_fs.f_type == BPF_FS_MAGIC;
}
