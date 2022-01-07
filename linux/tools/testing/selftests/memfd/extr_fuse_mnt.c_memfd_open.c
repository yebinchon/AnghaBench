
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int flags; int direct_io; } ;


 int EACCES ;
 int ENOENT ;
 int O_RDONLY ;
 int memfd_path ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int memfd_open(const char *path, struct fuse_file_info *fi)
{
 if (strcmp(path, memfd_path))
  return -ENOENT;

 if ((fi->flags & 3) != O_RDONLY)
  return -EACCES;


 fi->direct_io = 1;

 return 0;
}
