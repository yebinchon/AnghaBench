
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int O_CLOEXEC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int ksft_exit_fail_msg (char*,char const*,...) ;
 int open (char const*,int) ;
 int strerror (int) ;
 scalar_t__ write_nointr (int,void const*,size_t) ;

__attribute__((used)) static void write_to_file(const char *filename, const void *buf, size_t count,
     int allowed_errno)
{
 int fd, saved_errno;
 ssize_t ret;

 fd = open(filename, O_WRONLY | O_CLOEXEC);
 if (fd < 0)
  ksft_exit_fail_msg("%s - Failed to open file %s\n",
       strerror(errno), filename);

 ret = write_nointr(fd, buf, count);
 if (ret < 0) {
  if (allowed_errno && (errno == allowed_errno)) {
   close(fd);
   return;
  }

  goto on_error;
 }

 if ((size_t)ret != count)
  goto on_error;

 close(fd);
 return;

on_error:
 saved_errno = errno;
 close(fd);
 errno = saved_errno;

 if (ret < 0)
  ksft_exit_fail_msg("%s - Failed to write to file %s\n",
       strerror(errno), filename);

 ksft_exit_fail_msg("Failed to write to file %s\n", filename);
}
