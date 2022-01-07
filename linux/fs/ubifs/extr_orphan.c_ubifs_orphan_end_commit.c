
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ cmt_orphans; } ;


 int commit_orphans (struct ubifs_info*) ;
 int dbg_check_orphans (struct ubifs_info*) ;
 int erase_deleted (struct ubifs_info*) ;

int ubifs_orphan_end_commit(struct ubifs_info *c)
{
 int err;

 if (c->cmt_orphans != 0) {
  err = commit_orphans(c);
  if (err)
   return err;
 }
 erase_deleted(c);
 err = dbg_check_orphans(c);
 return err;
}
