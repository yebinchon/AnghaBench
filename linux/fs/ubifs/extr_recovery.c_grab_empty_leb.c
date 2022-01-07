
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int gc_lnum; int bi; } ;


 int LPROPS_INDEX ;
 int LPROPS_NC ;
 int dbg_rcvry (char*,int) ;
 int ubifs_change_one_lp (struct ubifs_info*,int,int ,int ,int ,int ,int ) ;
 int ubifs_dump_budg (struct ubifs_info*,int *) ;
 int ubifs_dump_lprops (struct ubifs_info*) ;
 int ubifs_err (struct ubifs_info*,char*) ;
 int ubifs_find_free_leb_for_idx (struct ubifs_info*) ;
 int ubifs_run_commit (struct ubifs_info*) ;

__attribute__((used)) static int grab_empty_leb(struct ubifs_info *c)
{
 int lnum, err;
 lnum = ubifs_find_free_leb_for_idx(c);
 if (lnum < 0) {
  ubifs_err(c, "could not find an empty LEB");
  ubifs_dump_lprops(c);
  ubifs_dump_budg(c, &c->bi);
  return lnum;
 }


 err = ubifs_change_one_lp(c, lnum, LPROPS_NC, LPROPS_NC, 0,
      LPROPS_INDEX, 0);
 if (err)
  return err;

 c->gc_lnum = lnum;
 dbg_rcvry("found empty LEB %d, run commit", lnum);

 return ubifs_run_commit(c);
}
