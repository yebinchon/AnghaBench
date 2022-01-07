
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int ssize_t ;
typedef int off_t ;


 int BUFSIZ ;
 int EIO ;
 int O_RDONLY ;
 int SEEK_CUR ;
 scalar_t__ bigendian () ;
 int close (int) ;
 int errno ;
 int lseek (int ,int ,int ) ;
 int open (char const*,int ) ;
 int output_fd ;
 int pr_debug (char*,...) ;
 scalar_t__ pwrite (int ,char*,int,int ) ;
 int read (int,char*,int) ;
 int write (int ,...) ;

__attribute__((used)) static int record_file(const char *file, ssize_t hdr_sz)
{
 unsigned long long size = 0;
 char buf[BUFSIZ], *sizep;
 off_t hdr_pos = lseek(output_fd, 0, SEEK_CUR);
 int r, fd;
 int err = -EIO;

 fd = open(file, O_RDONLY);
 if (fd < 0) {
  pr_debug("Can't read '%s'", file);
  return -errno;
 }


 if (hdr_sz) {
  if (write(output_fd, &size, hdr_sz) != hdr_sz)
   goto out;
 }

 do {
  r = read(fd, buf, BUFSIZ);
  if (r > 0) {
   size += r;
   if (write(output_fd, buf, r) != r)
    goto out;
  }
 } while (r > 0);


 sizep = (char*)&size;
 if (bigendian())
  sizep += sizeof(u64) - hdr_sz;

 if (hdr_sz && pwrite(output_fd, sizep, hdr_sz, hdr_pos) < 0) {
  pr_debug("writing file size failed\n");
  goto out;
 }

 err = 0;
out:
 close(fd);
 return err;
}
