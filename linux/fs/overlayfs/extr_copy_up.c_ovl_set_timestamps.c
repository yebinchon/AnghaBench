
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kstat {int mtime; int atime; } ;
struct iattr {int ia_valid; int ia_mtime; int ia_atime; } ;
struct dentry {int dummy; } ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int notify_change (struct dentry*,struct iattr*,int *) ;

__attribute__((used)) static int ovl_set_timestamps(struct dentry *upperdentry, struct kstat *stat)
{
 struct iattr attr = {
  .ia_valid =
       ATTR_ATIME | ATTR_MTIME | ATTR_ATIME_SET | ATTR_MTIME_SET,
  .ia_atime = stat->atime,
  .ia_mtime = stat->mtime,
 };

 return notify_change(upperdentry, &attr, ((void*)0));
}
