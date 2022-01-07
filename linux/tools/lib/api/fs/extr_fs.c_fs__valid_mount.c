
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {scalar_t__ f_type; } ;


 int ENOENT ;
 scalar_t__ statfs (char const*,struct statfs*) ;

__attribute__((used)) static int fs__valid_mount(const char *fs, long magic)
{
 struct statfs st_fs;

 if (statfs(fs, &st_fs) < 0)
  return -ENOENT;
 else if ((long)st_fs.f_type != magic)
  return -ENOENT;

 return 0;
}
