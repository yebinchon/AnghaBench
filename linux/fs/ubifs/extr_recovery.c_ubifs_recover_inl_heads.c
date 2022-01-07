
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int nhead_offs; int nhead_lnum; int ihead_offs; int ihead_lnum; scalar_t__ remounting_rw; int ro_mount; } ;


 int dbg_rcvry (char*,int ,int ) ;
 int recover_head (struct ubifs_info*,int ,int ,void*) ;
 int ubifs_assert (struct ubifs_info*,int) ;

int ubifs_recover_inl_heads(struct ubifs_info *c, void *sbuf)
{
 int err;

 ubifs_assert(c, !c->ro_mount || c->remounting_rw);

 dbg_rcvry("checking index head at %d:%d", c->ihead_lnum, c->ihead_offs);
 err = recover_head(c, c->ihead_lnum, c->ihead_offs, sbuf);
 if (err)
  return err;

 dbg_rcvry("checking LPT head at %d:%d", c->nhead_lnum, c->nhead_offs);

 return recover_head(c, c->nhead_lnum, c->nhead_offs, sbuf);
}
