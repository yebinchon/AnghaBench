
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_scan_leb {int lnum; void* buf; int nodes; } ;
struct ubifs_info {scalar_t__ leb_size; } ;


 int EBADMSG ;
 int ENOMEM ;
 struct ubifs_scan_leb* ERR_PTR (int) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int dbg_scan (char*,int,int) ;
 int kfree (struct ubifs_scan_leb*) ;
 struct ubifs_scan_leb* kzalloc (int,int ) ;
 int ubifs_err (struct ubifs_info const*,char*,scalar_t__,int,int,int) ;
 int ubifs_leb_read (struct ubifs_info const*,int,void*,int,scalar_t__,int ) ;

struct ubifs_scan_leb *ubifs_start_scan(const struct ubifs_info *c, int lnum,
     int offs, void *sbuf)
{
 struct ubifs_scan_leb *sleb;
 int err;

 dbg_scan("scan LEB %d:%d", lnum, offs);

 sleb = kzalloc(sizeof(struct ubifs_scan_leb), GFP_NOFS);
 if (!sleb)
  return ERR_PTR(-ENOMEM);

 sleb->lnum = lnum;
 INIT_LIST_HEAD(&sleb->nodes);
 sleb->buf = sbuf;

 err = ubifs_leb_read(c, lnum, sbuf + offs, offs, c->leb_size - offs, 0);
 if (err && err != -EBADMSG) {
  ubifs_err(c, "cannot read %d bytes from LEB %d:%d, error %d",
     c->leb_size - offs, lnum, offs, err);
  kfree(sleb);
  return ERR_PTR(err);
 }





 return sleb;
}
