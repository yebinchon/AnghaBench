
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {int dummy; } ;
struct ubifs_nnode {int dummy; } ;
struct ubifs_info {int nhead_lnum; int nhead_offs; int lsave_sz; int leb_size; int ltab_sz; int nnode_sz; int pnode_sz; int lpt_first; int lpt_last; int lpt_lnum; int lpt_offs; int ltab_lnum; int ltab_offs; int lsave_lnum; int lsave_offs; scalar_t__ big_lpt; int min_io_size; int ltab_cmt; int lsave; struct ubifs_cnode* lpt_cnext; void* lpt_buf; } ;
struct ubifs_cnode {struct ubifs_cnode* cnext; int flags; scalar_t__ level; } ;


 int ALIGN (int,int ) ;
 int COW_CNODE ;
 int DIRTY_CNODE ;
 int clear_bit (int ,int *) ;
 int dbg_chk_lpt_sz (struct ubifs_info*,int,int) ;
 int dbg_lp (char*,int,int) ;
 int dump_stack () ;
 int memset (void*,int,int) ;
 int realloc_lpt_leb (struct ubifs_info*,int*) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_dump_lpt_info (struct ubifs_info*) ;
 int ubifs_dump_lpt_lebs (struct ubifs_info*) ;
 int ubifs_err (struct ubifs_info*,char*,int,int,int,int,int) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;
 int ubifs_leb_write (struct ubifs_info*,int,void*,int,int) ;
 int ubifs_pack_lsave (struct ubifs_info*,void*,int ) ;
 int ubifs_pack_ltab (struct ubifs_info*,void*,int ) ;
 int ubifs_pack_nnode (struct ubifs_info*,void*,struct ubifs_nnode*) ;
 int ubifs_pack_pnode (struct ubifs_info*,void*,struct ubifs_pnode*) ;

__attribute__((used)) static int write_cnodes(struct ubifs_info *c)
{
 int lnum, offs, len, from, err, wlen, alen, done_ltab, done_lsave;
 struct ubifs_cnode *cnode;
 void *buf = c->lpt_buf;

 cnode = c->lpt_cnext;
 if (!cnode)
  return 0;
 lnum = c->nhead_lnum;
 offs = c->nhead_offs;
 from = offs;

 if (offs == 0) {
  err = ubifs_leb_unmap(c, lnum);
  if (err)
   return err;
 }

 done_lsave = !c->big_lpt;
 done_ltab = 0;
 if (!done_lsave && offs + c->lsave_sz <= c->leb_size) {
  done_lsave = 1;
  ubifs_pack_lsave(c, buf + offs, c->lsave);
  offs += c->lsave_sz;
  dbg_chk_lpt_sz(c, 1, c->lsave_sz);
 }

 if (offs + c->ltab_sz <= c->leb_size) {
  done_ltab = 1;
  ubifs_pack_ltab(c, buf + offs, c->ltab_cmt);
  offs += c->ltab_sz;
  dbg_chk_lpt_sz(c, 1, c->ltab_sz);
 }


 do {
  if (cnode->level)
   len = c->nnode_sz;
  else
   len = c->pnode_sz;
  while (offs + len > c->leb_size) {
   wlen = offs - from;
   if (wlen) {
    alen = ALIGN(wlen, c->min_io_size);
    memset(buf + offs, 0xff, alen - wlen);
    err = ubifs_leb_write(c, lnum, buf + from, from,
             alen);
    if (err)
     return err;
   }
   dbg_chk_lpt_sz(c, 2, c->leb_size - offs);
   err = realloc_lpt_leb(c, &lnum);
   if (err)
    goto no_space;
   offs = from = 0;
   ubifs_assert(c, lnum >= c->lpt_first &&
         lnum <= c->lpt_last);
   err = ubifs_leb_unmap(c, lnum);
   if (err)
    return err;

   if (!done_lsave) {
    done_lsave = 1;
    ubifs_pack_lsave(c, buf + offs, c->lsave);
    offs += c->lsave_sz;
    dbg_chk_lpt_sz(c, 1, c->lsave_sz);
    continue;
   }
   if (!done_ltab) {
    done_ltab = 1;
    ubifs_pack_ltab(c, buf + offs, c->ltab_cmt);
    offs += c->ltab_sz;
    dbg_chk_lpt_sz(c, 1, c->ltab_sz);
    continue;
   }
   break;
  }
  if (cnode->level)
   ubifs_pack_nnode(c, buf + offs,
      (struct ubifs_nnode *)cnode);
  else
   ubifs_pack_pnode(c, buf + offs,
      (struct ubifs_pnode *)cnode);






  clear_bit(DIRTY_CNODE, &cnode->flags);
  smp_mb__before_atomic();
  clear_bit(COW_CNODE, &cnode->flags);
  smp_mb__after_atomic();
  offs += len;
  dbg_chk_lpt_sz(c, 1, len);
  cnode = cnode->cnext;
 } while (cnode && cnode != c->lpt_cnext);


 if (!done_lsave) {
  if (offs + c->lsave_sz > c->leb_size) {
   wlen = offs - from;
   alen = ALIGN(wlen, c->min_io_size);
   memset(buf + offs, 0xff, alen - wlen);
   err = ubifs_leb_write(c, lnum, buf + from, from, alen);
   if (err)
    return err;
   dbg_chk_lpt_sz(c, 2, c->leb_size - offs);
   err = realloc_lpt_leb(c, &lnum);
   if (err)
    goto no_space;
   offs = from = 0;
   ubifs_assert(c, lnum >= c->lpt_first &&
         lnum <= c->lpt_last);
   err = ubifs_leb_unmap(c, lnum);
   if (err)
    return err;
  }
  done_lsave = 1;
  ubifs_pack_lsave(c, buf + offs, c->lsave);
  offs += c->lsave_sz;
  dbg_chk_lpt_sz(c, 1, c->lsave_sz);
 }


 if (!done_ltab) {
  if (offs + c->ltab_sz > c->leb_size) {
   wlen = offs - from;
   alen = ALIGN(wlen, c->min_io_size);
   memset(buf + offs, 0xff, alen - wlen);
   err = ubifs_leb_write(c, lnum, buf + from, from, alen);
   if (err)
    return err;
   dbg_chk_lpt_sz(c, 2, c->leb_size - offs);
   err = realloc_lpt_leb(c, &lnum);
   if (err)
    goto no_space;
   offs = from = 0;
   ubifs_assert(c, lnum >= c->lpt_first &&
         lnum <= c->lpt_last);
   err = ubifs_leb_unmap(c, lnum);
   if (err)
    return err;
  }
  ubifs_pack_ltab(c, buf + offs, c->ltab_cmt);
  offs += c->ltab_sz;
  dbg_chk_lpt_sz(c, 1, c->ltab_sz);
 }


 wlen = offs - from;
 alen = ALIGN(wlen, c->min_io_size);
 memset(buf + offs, 0xff, alen - wlen);
 err = ubifs_leb_write(c, lnum, buf + from, from, alen);
 if (err)
  return err;

 dbg_chk_lpt_sz(c, 4, alen - wlen);
 err = dbg_chk_lpt_sz(c, 3, ALIGN(offs, c->min_io_size));
 if (err)
  return err;

 c->nhead_lnum = lnum;
 c->nhead_offs = ALIGN(offs, c->min_io_size);

 dbg_lp("LPT root is at %d:%d", c->lpt_lnum, c->lpt_offs);
 dbg_lp("LPT head is at %d:%d", c->nhead_lnum, c->nhead_offs);
 dbg_lp("LPT ltab is at %d:%d", c->ltab_lnum, c->ltab_offs);
 if (c->big_lpt)
  dbg_lp("LPT lsave is at %d:%d", c->lsave_lnum, c->lsave_offs);

 return 0;

no_space:
 ubifs_err(c, "LPT out of space mismatch at LEB %d:%d needing %d, done_ltab %d, done_lsave %d",
    lnum, offs, len, done_ltab, done_lsave);
 ubifs_dump_lpt_info(c);
 ubifs_dump_lpt_lebs(c);
 dump_stack();
 return err;
}
