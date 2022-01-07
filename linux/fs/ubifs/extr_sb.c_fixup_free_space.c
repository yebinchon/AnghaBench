
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_lprops {scalar_t__ free; } ;
struct ubifs_info {scalar_t__ mst_offs; scalar_t__ mst_node_alsz; int lhead_lnum; int ltail_lnum; int lpt_first; int lpt_last; scalar_t__ leb_size; int orph_first; int orph_last; int main_first; int leb_cnt; TYPE_1__* ltab; int min_io_size; } ;
struct TYPE_2__ {int free; } ;


 scalar_t__ ALIGN (int ,int ) ;
 scalar_t__ IS_ERR (struct ubifs_lprops*) ;
 int PTR_ERR (struct ubifs_lprops*) ;
 int UBIFS_CS_NODE_SZ ;
 int UBIFS_LOG_LNUM ;
 int UBIFS_MST_LNUM ;
 int fixup_leb (struct ubifs_info*,int,scalar_t__) ;
 int ubifs_get_lprops (struct ubifs_info*) ;
 struct ubifs_lprops* ubifs_lpt_lookup (struct ubifs_info*,int) ;
 int ubifs_next_log_lnum (struct ubifs_info*,int) ;
 int ubifs_release_lprops (struct ubifs_info*) ;

__attribute__((used)) static int fixup_free_space(struct ubifs_info *c)
{
 int lnum, err = 0;
 struct ubifs_lprops *lprops;

 ubifs_get_lprops(c);


 for (lnum = UBIFS_MST_LNUM; lnum < UBIFS_LOG_LNUM; lnum++) {
  err = fixup_leb(c, lnum, c->mst_offs + c->mst_node_alsz);
  if (err)
   goto out;
 }


 lnum = ubifs_next_log_lnum(c, c->lhead_lnum);
 while (lnum != c->ltail_lnum) {
  err = fixup_leb(c, lnum, 0);
  if (err)
   goto out;
  lnum = ubifs_next_log_lnum(c, lnum);
 }





 err = fixup_leb(c, c->lhead_lnum,
   ALIGN(UBIFS_CS_NODE_SZ, c->min_io_size));
 if (err)
  goto out;


 for (lnum = c->lpt_first; lnum <= c->lpt_last; lnum++) {
  int free = c->ltab[lnum - c->lpt_first].free;

  if (free > 0) {
   err = fixup_leb(c, lnum, c->leb_size - free);
   if (err)
    goto out;
  }
 }


 for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
  err = fixup_leb(c, lnum, 0);
  if (err)
   goto out;
 }


 for (lnum = c->main_first; lnum < c->leb_cnt; lnum++) {
  lprops = ubifs_lpt_lookup(c, lnum);
  if (IS_ERR(lprops)) {
   err = PTR_ERR(lprops);
   goto out;
  }

  if (lprops->free > 0) {
   err = fixup_leb(c, lnum, c->leb_size - lprops->free);
   if (err)
    goto out;
  }
 }

out:
 ubifs_release_lprops(c);
 return err;
}
