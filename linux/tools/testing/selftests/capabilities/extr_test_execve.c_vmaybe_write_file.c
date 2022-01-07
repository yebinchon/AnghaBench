
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int ssize_t ;
typedef int buf ;


 scalar_t__ ENOENT ;
 int O_WRONLY ;
 scalar_t__ close (int) ;
 scalar_t__ errno ;
 int ksft_exit_fail_msg (char*,...) ;
 int open (char*,int ) ;
 int strerror (scalar_t__) ;
 int vsnprintf (char*,int,char*,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static void vmaybe_write_file(bool enoent_ok, char *filename, char *fmt, va_list ap)
{
 char buf[4096];
 int fd;
 ssize_t written;
 int buf_len;

 buf_len = vsnprintf(buf, sizeof(buf), fmt, ap);
 if (buf_len < 0)
  ksft_exit_fail_msg("vsnprintf failed - %s\n", strerror(errno));

 if (buf_len >= sizeof(buf))
  ksft_exit_fail_msg("vsnprintf output truncated\n");


 fd = open(filename, O_WRONLY);
 if (fd < 0) {
  if ((errno == ENOENT) && enoent_ok)
   return;
  ksft_exit_fail_msg("open of %s failed - %s\n",
     filename, strerror(errno));
 }
 written = write(fd, buf, buf_len);
 if (written != buf_len) {
  if (written >= 0) {
   ksft_exit_fail_msg("short write to %s\n", filename);
  } else {
   ksft_exit_fail_msg("write to %s failed - %s\n",
      filename, strerror(errno));
  }
 }
 if (close(fd) != 0) {
  ksft_exit_fail_msg("close of %s failed - %s\n",
     filename, strerror(errno));
 }
}
