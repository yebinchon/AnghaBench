
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int path ;
typedef int buf ;


 int BPF_OBJ_MAP ;
 int BPF_OBJ_PROG ;
 int BPF_OBJ_UNKNOWN ;
 int PATH_MAX ;
 int errno ;
 int p_err (char*,...) ;
 int readlink (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strerror (int ) ;
 scalar_t__ strstr (char*,char*) ;

int get_fd_type(int fd)
{
 char path[PATH_MAX];
 char buf[512];
 ssize_t n;

 snprintf(path, sizeof(path), "/proc/self/fd/%d", fd);

 n = readlink(path, buf, sizeof(buf));
 if (n < 0) {
  p_err("can't read link type: %s", strerror(errno));
  return -1;
 }
 if (n == sizeof(path)) {
  p_err("can't read link type: path too long!");
  return -1;
 }

 if (strstr(buf, "bpf-map"))
  return BPF_OBJ_MAP;
 else if (strstr(buf, "bpf-prog"))
  return BPF_OBJ_PROG;

 return BPF_OBJ_UNKNOWN;
}
