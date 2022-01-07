
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_test {int open_flags; int newval; int oldval; int seek; } ;
typedef int buf ;


 int O_CLOEXEC ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SEEK_SET ;
 int close (int) ;
 int log_err (char*,...) ;
 int lseek (int,int ,int ) ;
 int open (char const*,int) ;
 int read (int,char*,int) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int ) ;
 int write (int,int ,int ) ;

__attribute__((used)) static int access_sysctl(const char *sysctl_path,
    const struct sysctl_test *test)
{
 int err = 0;
 int fd;

 fd = open(sysctl_path, test->open_flags | O_CLOEXEC);
 if (fd < 0)
  return fd;

 if (test->seek && lseek(fd, test->seek, SEEK_SET) == -1) {
  log_err("lseek(%d) failed", test->seek);
  goto err;
 }

 if (test->open_flags == O_RDONLY) {
  char buf[128];

  if (read(fd, buf, sizeof(buf)) == -1)
   goto err;
  if (test->oldval &&
      strncmp(buf, test->oldval, strlen(test->oldval))) {
   log_err("Read value %s != %s", buf, test->oldval);
   goto err;
  }
 } else if (test->open_flags == O_WRONLY) {
  if (!test->newval) {
   log_err("New value for sysctl is not set");
   goto err;
  }
  if (write(fd, test->newval, strlen(test->newval)) == -1)
   goto err;
 } else {
  log_err("Unexpected sysctl access: neither read nor write");
  goto err;
 }

 goto out;
err:
 err = -1;
out:
 close(fd);
 return err;
}
