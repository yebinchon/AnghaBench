
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
typedef scalar_t__ ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int free (void*) ;
 scalar_t__ fstat (int,struct stat*) ;
 void* malloc (size_t) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,void*,size_t) ;
 int read_build_id (void*,size_t,void*,size_t,int) ;

int sysfs__read_build_id(const char *filename, void *build_id, size_t size)
{
 int fd;
 int ret = -1;
 struct stat stbuf;
 size_t buf_size;
 void *buf;

 fd = open(filename, O_RDONLY);
 if (fd < 0)
  return -1;

 if (fstat(fd, &stbuf) < 0)
  goto out;

 buf_size = stbuf.st_size;
 buf = malloc(buf_size);
 if (buf == ((void*)0))
  goto out;

 if (read(fd, buf, buf_size) != (ssize_t) buf_size)
  goto out_free;

 ret = read_build_id(buf, buf_size, build_id, size, 0);
out_free:
 free(buf);
out:
 close(fd);
 return ret;
}
