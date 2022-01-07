
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int errbuf ;


 int O_APPEND ;
 int O_TRUNC ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 char* get_tracing_file (char const*) ;
 int open (char*,int) ;
 int pr_debug (char*,char const*,...) ;
 int put_tracing_file (char*) ;
 int str_error_r (int ,char*,int) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 size_t write (int,char*,size_t) ;

__attribute__((used)) static int __write_tracing_file(const char *name, const char *val, bool append)
{
 char *file;
 int fd, ret = -1;
 ssize_t size = strlen(val);
 int flags = O_WRONLY;
 char errbuf[512];
 char *val_copy;

 file = get_tracing_file(name);
 if (!file) {
  pr_debug("cannot get tracing file: %s\n", name);
  return -1;
 }

 if (append)
  flags |= O_APPEND;
 else
  flags |= O_TRUNC;

 fd = open(file, flags);
 if (fd < 0) {
  pr_debug("cannot open tracing file: %s: %s\n",
    name, str_error_r(errno, errbuf, sizeof(errbuf)));
  goto out;
 }





 val_copy = strdup(val);
 if (!val_copy)
  goto out_close;
 val_copy[size] = '\n';

 if (write(fd, val_copy, size + 1) == size + 1)
  ret = 0;
 else
  pr_debug("write '%s' to tracing/%s failed: %s\n",
    val, name, str_error_r(errno, errbuf, sizeof(errbuf)));

 free(val_copy);
out_close:
 close(fd);
out:
 put_tracing_file(file);
 return ret;
}
