
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int commit_sem; } ;


 int dbg_budg (char*,int) ;
 int down_read (int *) ;
 int ubifs_garbage_collect (struct ubifs_info*,int) ;
 int ubifs_return_leb (struct ubifs_info*,int) ;
 int up_read (int *) ;

__attribute__((used)) static int run_gc(struct ubifs_info *c)
{
 int err, lnum;


 down_read(&c->commit_sem);
 lnum = ubifs_garbage_collect(c, 1);
 up_read(&c->commit_sem);
 if (lnum < 0)
  return lnum;


 dbg_budg("GC freed LEB %d", lnum);
 err = ubifs_return_leb(c, lnum);
 if (err)
  return err;
 return 0;
}
