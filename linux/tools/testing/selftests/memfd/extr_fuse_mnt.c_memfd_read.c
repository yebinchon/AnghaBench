
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int dummy; } ;
typedef size_t off_t ;


 int ENOENT ;
 int memcpy (char*,scalar_t__,size_t) ;
 scalar_t__ memfd_content ;
 int memfd_path ;
 int sleep (int) ;
 scalar_t__ strcmp (char const*,int ) ;
 size_t strlen (scalar_t__) ;

__attribute__((used)) static int memfd_read(const char *path,
        char *buf,
        size_t size,
        off_t offset,
        struct fuse_file_info *fi)
{
 size_t len;

 if (strcmp(path, memfd_path) != 0)
  return -ENOENT;

 sleep(1);

 len = strlen(memfd_content);
 if (offset < len) {
  if (offset + size > len)
   size = len - offset;

  memcpy(buf, memfd_content + offset, size);
 } else {
  size = 0;
 }

 return size;
}
