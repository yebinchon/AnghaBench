
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstat {int gid; int uid; int mode; } ;
struct iattr {int ia_valid; int ia_gid; int ia_uid; int ia_mode; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int S_ISLNK (int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 int ovl_set_timestamps (struct dentry*,struct kstat*) ;

int ovl_set_attr(struct dentry *upperdentry, struct kstat *stat)
{
 int err = 0;

 if (!S_ISLNK(stat->mode)) {
  struct iattr attr = {
   .ia_valid = ATTR_MODE,
   .ia_mode = stat->mode,
  };
  err = notify_change(upperdentry, &attr, ((void*)0));
 }
 if (!err) {
  struct iattr attr = {
   .ia_valid = ATTR_UID | ATTR_GID,
   .ia_uid = stat->uid,
   .ia_gid = stat->gid,
  };
  err = notify_change(upperdentry, &attr, ((void*)0));
 }
 if (!err)
  ovl_set_timestamps(upperdentry, stat);

 return err;
}
