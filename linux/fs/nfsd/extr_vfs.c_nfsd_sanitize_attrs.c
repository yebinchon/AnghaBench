
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct iattr {int ia_valid; int ia_mode; } ;


 int ATTR_GID ;
 int ATTR_KILL_PRIV ;
 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int S_IALLUGO ;
 int S_ISDIR (int) ;
 int S_ISGID ;
 int S_ISUID ;
 int S_IXGRP ;

__attribute__((used)) static void
nfsd_sanitize_attrs(struct inode *inode, struct iattr *iap)
{

 if (iap->ia_valid & ATTR_MODE) {
  iap->ia_mode &= S_IALLUGO;
  iap->ia_mode |= (inode->i_mode & ~S_IALLUGO);
 }


 if (!S_ISDIR(inode->i_mode) &&
     ((iap->ia_valid & ATTR_UID) || (iap->ia_valid & ATTR_GID))) {
  iap->ia_valid |= ATTR_KILL_PRIV;
  if (iap->ia_valid & ATTR_MODE) {

   iap->ia_mode &= ~S_ISUID;
   if (iap->ia_mode & S_IXGRP)
    iap->ia_mode &= ~S_ISGID;
  } else {

   iap->ia_valid |= (ATTR_KILL_SUID | ATTR_KILL_SGID);
  }
 }
}
