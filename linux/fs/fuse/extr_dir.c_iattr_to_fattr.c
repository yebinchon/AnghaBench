
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct iattr {unsigned int ia_valid; TYPE_3__ ia_ctime; TYPE_2__ ia_mtime; TYPE_1__ ia_atime; int ia_size; int ia_gid; int ia_uid; int ia_mode; } ;
struct fuse_setattr_in {int ctimensec; int ctime; int valid; int mtimensec; int mtime; int atimensec; int atime; int size; int gid; int uid; int mode; } ;
struct fuse_conn {int user_ns; } ;


 unsigned int ATTR_ATIME ;
 unsigned int ATTR_ATIME_SET ;
 unsigned int ATTR_CTIME ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME ;
 unsigned int ATTR_MTIME_SET ;
 unsigned int ATTR_SIZE ;
 unsigned int ATTR_UID ;
 int FATTR_ATIME ;
 int FATTR_ATIME_NOW ;
 int FATTR_CTIME ;
 int FATTR_GID ;
 int FATTR_MODE ;
 int FATTR_MTIME ;
 int FATTR_MTIME_NOW ;
 int FATTR_SIZE ;
 int FATTR_UID ;
 int from_kgid (int ,int ) ;
 int from_kuid (int ,int ) ;
 scalar_t__ update_mtime (unsigned int,int) ;

__attribute__((used)) static void iattr_to_fattr(struct fuse_conn *fc, struct iattr *iattr,
      struct fuse_setattr_in *arg, bool trust_local_cmtime)
{
 unsigned ivalid = iattr->ia_valid;

 if (ivalid & ATTR_MODE)
  arg->valid |= FATTR_MODE, arg->mode = iattr->ia_mode;
 if (ivalid & ATTR_UID)
  arg->valid |= FATTR_UID, arg->uid = from_kuid(fc->user_ns, iattr->ia_uid);
 if (ivalid & ATTR_GID)
  arg->valid |= FATTR_GID, arg->gid = from_kgid(fc->user_ns, iattr->ia_gid);
 if (ivalid & ATTR_SIZE)
  arg->valid |= FATTR_SIZE, arg->size = iattr->ia_size;
 if (ivalid & ATTR_ATIME) {
  arg->valid |= FATTR_ATIME;
  arg->atime = iattr->ia_atime.tv_sec;
  arg->atimensec = iattr->ia_atime.tv_nsec;
  if (!(ivalid & ATTR_ATIME_SET))
   arg->valid |= FATTR_ATIME_NOW;
 }
 if ((ivalid & ATTR_MTIME) && update_mtime(ivalid, trust_local_cmtime)) {
  arg->valid |= FATTR_MTIME;
  arg->mtime = iattr->ia_mtime.tv_sec;
  arg->mtimensec = iattr->ia_mtime.tv_nsec;
  if (!(ivalid & ATTR_MTIME_SET) && !trust_local_cmtime)
   arg->valid |= FATTR_MTIME_NOW;
 }
 if ((ivalid & ATTR_CTIME) && trust_local_cmtime) {
  arg->valid |= FATTR_CTIME;
  arg->ctime = iattr->ia_ctime.tv_sec;
  arg->ctimensec = iattr->ia_ctime.tv_nsec;
 }
}
