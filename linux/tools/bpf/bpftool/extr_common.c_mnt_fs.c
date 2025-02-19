
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINVAL ;
 int MS_BIND ;
 int MS_PRIVATE ;
 int MS_REC ;
 scalar_t__ errno ;
 scalar_t__ mount (char const*,char const*,char const*,int,char*) ;
 int snprintf (char*,size_t,char*,char const*,char const*,...) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int
mnt_fs(const char *target, const char *type, char *buff, size_t bufflen)
{
 bool bind_done = 0;

 while (mount("", target, "none", MS_PRIVATE | MS_REC, ((void*)0))) {
  if (errno != EINVAL || bind_done) {
   snprintf(buff, bufflen,
     "mount --make-private %s failed: %s",
     target, strerror(errno));
   return -1;
  }

  if (mount(target, target, "none", MS_BIND, ((void*)0))) {
   snprintf(buff, bufflen,
     "mount --bind %s %s failed: %s",
     target, target, strerror(errno));
   return -1;
  }

  bind_done = 1;
 }

 if (mount(type, target, type, 0, "mode=0700")) {
  snprintf(buff, bufflen, "mount -t %s %s %s failed: %s",
    type, type, target, strerror(errno));
  return -1;
 }

 return 0;
}
