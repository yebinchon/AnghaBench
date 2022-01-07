
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_scan_leb {scalar_t__ endpt; } ;
struct ubifs_info {int ohead_lnum; int orph_first; int orph_last; scalar_t__ ohead_offs; int sbuf; scalar_t__ no_orphs; } ;


 int EUCLEAN ;
 scalar_t__ IS_ERR (struct ubifs_scan_leb*) ;
 int PTR_ERR (struct ubifs_scan_leb*) ;
 int dbg_rcvry (char*,...) ;
 int do_kill_orphans (struct ubifs_info*,struct ubifs_scan_leb*,unsigned long long*,int*,int*) ;
 struct ubifs_scan_leb* ubifs_recover_leb (struct ubifs_info*,int,int ,int ,int) ;
 struct ubifs_scan_leb* ubifs_scan (struct ubifs_info*,int,int ,int ,int) ;
 int ubifs_scan_destroy (struct ubifs_scan_leb*) ;

__attribute__((used)) static int kill_orphans(struct ubifs_info *c)
{
 unsigned long long last_cmt_no = 0;
 int lnum, err = 0, outofdate = 0, last_flagged = 0;

 c->ohead_lnum = c->orph_first;
 c->ohead_offs = 0;

 if (c->no_orphs) {
  dbg_rcvry("no orphans");
  return 0;
 }
 for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
  struct ubifs_scan_leb *sleb;

  dbg_rcvry("LEB %d", lnum);
  sleb = ubifs_scan(c, lnum, 0, c->sbuf, 1);
  if (IS_ERR(sleb)) {
   if (PTR_ERR(sleb) == -EUCLEAN)
    sleb = ubifs_recover_leb(c, lnum, 0,
        c->sbuf, -1);
   if (IS_ERR(sleb)) {
    err = PTR_ERR(sleb);
    break;
   }
  }
  err = do_kill_orphans(c, sleb, &last_cmt_no, &outofdate,
          &last_flagged);
  if (err || outofdate) {
   ubifs_scan_destroy(sleb);
   break;
  }
  if (sleb->endpt) {
   c->ohead_lnum = lnum;
   c->ohead_offs = sleb->endpt;
  }
  ubifs_scan_destroy(sleb);
 }
 return err;
}
