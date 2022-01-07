
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int lnum; int offs; int used; } ;
struct ubifs_scan_node {int list; int len; int offs; int key; int node; } ;
struct ubifs_scan_leb {int lnum; } ;
struct ubifs_info {int dummy; } ;


 int cond_resched () ;
 int kfree (struct ubifs_scan_node*) ;
 int list_del (int *) ;
 int ubifs_tnc_replace (struct ubifs_info*,int *,int ,int ,int,int,int ) ;
 int ubifs_wbuf_write_nolock (struct ubifs_wbuf*,int ,int ) ;

__attribute__((used)) static int move_node(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
       struct ubifs_scan_node *snod, struct ubifs_wbuf *wbuf)
{
 int err, new_lnum = wbuf->lnum, new_offs = wbuf->offs + wbuf->used;

 cond_resched();
 err = ubifs_wbuf_write_nolock(wbuf, snod->node, snod->len);
 if (err)
  return err;

 err = ubifs_tnc_replace(c, &snod->key, sleb->lnum,
    snod->offs, new_lnum, new_offs,
    snod->len);
 list_del(&snod->list);
 kfree(snod);
 return err;
}
