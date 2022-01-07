
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
struct hostfs_stat {TYPE_2__ mtime; TYPE_1__ atime; } ;
struct hostfs_iattr {int ia_valid; int ia_uid; int ia_gid; TYPE_2__ ia_mtime; TYPE_1__ ia_atime; int ia_size; int ia_mode; } ;


 int HOSTFS_ATTR_ATIME ;
 int HOSTFS_ATTR_ATIME_SET ;
 int HOSTFS_ATTR_GID ;
 int HOSTFS_ATTR_MODE ;
 int HOSTFS_ATTR_MTIME ;
 int HOSTFS_ATTR_MTIME_SET ;
 int HOSTFS_ATTR_SIZE ;
 int HOSTFS_ATTR_UID ;
 scalar_t__ chmod (char const*,int ) ;
 scalar_t__ chown (char const*,int,int) ;
 int errno ;
 scalar_t__ fchmod (int,int ) ;
 scalar_t__ fchown (int,int,int) ;
 scalar_t__ ftruncate (int,int ) ;
 scalar_t__ futimes (int,struct timeval*) ;
 int stat_file (char const*,struct hostfs_stat*,int) ;
 scalar_t__ truncate (char const*,int ) ;
 scalar_t__ utimes (char const*,struct timeval*) ;

int set_attr(const char *file, struct hostfs_iattr *attrs, int fd)
{
 struct hostfs_stat st;
 struct timeval times[2];
 int err, ma;

 if (attrs->ia_valid & HOSTFS_ATTR_MODE) {
  if (fd >= 0) {
   if (fchmod(fd, attrs->ia_mode) != 0)
    return -errno;
  } else if (chmod(file, attrs->ia_mode) != 0) {
   return -errno;
  }
 }
 if (attrs->ia_valid & HOSTFS_ATTR_UID) {
  if (fd >= 0) {
   if (fchown(fd, attrs->ia_uid, -1))
    return -errno;
  } else if (chown(file, attrs->ia_uid, -1)) {
   return -errno;
  }
 }
 if (attrs->ia_valid & HOSTFS_ATTR_GID) {
  if (fd >= 0) {
   if (fchown(fd, -1, attrs->ia_gid))
    return -errno;
  } else if (chown(file, -1, attrs->ia_gid)) {
   return -errno;
  }
 }
 if (attrs->ia_valid & HOSTFS_ATTR_SIZE) {
  if (fd >= 0) {
   if (ftruncate(fd, attrs->ia_size))
    return -errno;
  } else if (truncate(file, attrs->ia_size)) {
   return -errno;
  }
 }






 ma = (HOSTFS_ATTR_ATIME_SET | HOSTFS_ATTR_MTIME_SET);
 if (attrs->ia_valid & ma) {
  err = stat_file(file, &st, fd);
  if (err != 0)
   return err;

  times[0].tv_sec = st.atime.tv_sec;
  times[0].tv_usec = st.atime.tv_nsec / 1000;
  times[1].tv_sec = st.mtime.tv_sec;
  times[1].tv_usec = st.mtime.tv_nsec / 1000;

  if (attrs->ia_valid & HOSTFS_ATTR_ATIME_SET) {
   times[0].tv_sec = attrs->ia_atime.tv_sec;
   times[0].tv_usec = attrs->ia_atime.tv_nsec / 1000;
  }
  if (attrs->ia_valid & HOSTFS_ATTR_MTIME_SET) {
   times[1].tv_sec = attrs->ia_mtime.tv_sec;
   times[1].tv_usec = attrs->ia_mtime.tv_nsec / 1000;
  }

  if (fd >= 0) {
   if (futimes(fd, times) != 0)
    return -errno;
  } else if (utimes(file, times) != 0) {
   return -errno;
  }
 }


 if (attrs->ia_valid & (HOSTFS_ATTR_ATIME | HOSTFS_ATTR_MTIME)) {
  err = stat_file(file, &st, fd);
  attrs->ia_atime = st.atime;
  attrs->ia_mtime = st.mtime;
  if (err != 0)
   return err;
 }
 return 0;
}
