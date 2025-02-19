
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int empty; int leb_cnt; } ;


 int cond_resched () ;
 int ubifs_is_mapped (struct ubifs_info*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_volume_empty(struct ubifs_info *c)
{
 int lnum, err;

 c->empty = 1;
 for (lnum = 0; lnum < c->leb_cnt; lnum++) {
  err = ubifs_is_mapped(c, lnum);
  if (unlikely(err < 0))
   return err;
  if (err == 1) {
   c->empty = 0;
   break;
  }

  cond_resched();
 }

 return 0;
}
