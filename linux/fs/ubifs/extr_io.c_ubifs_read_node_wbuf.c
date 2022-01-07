
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_wbuf {int lnum; int offs; int buf; int lock; int jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; } ;
struct ubifs_ch {int node_type; int len; } ;


 int EBADMSG ;
 int EINVAL ;
 int UBIFS_NODE_TYPES_CNT ;
 int dbg_io (char*,int,int,int ,int,int ) ;
 int dbg_jhead (int ) ;
 int dbg_ntype (int) ;
 int dump_stack () ;
 int le32_to_cpu (int ) ;
 int memcpy (void*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_assert (struct ubifs_info const*,int) ;
 int ubifs_check_node (struct ubifs_info const*,void*,int,int,int ,int ) ;
 int ubifs_dump_node (struct ubifs_info const*,void*) ;
 int ubifs_err (struct ubifs_info const*,char*,int,...) ;
 int ubifs_leb_read (struct ubifs_info const*,int,void*,int,int,int ) ;
 int ubifs_read_node (struct ubifs_info const*,void*,int,int,int,int) ;

int ubifs_read_node_wbuf(struct ubifs_wbuf *wbuf, void *buf, int type, int len,
    int lnum, int offs)
{
 const struct ubifs_info *c = wbuf->c;
 int err, rlen, overlap;
 struct ubifs_ch *ch = buf;

 dbg_io("LEB %d:%d, %s, length %d, jhead %s", lnum, offs,
        dbg_ntype(type), len, dbg_jhead(wbuf->jhead));
 ubifs_assert(c, wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
 ubifs_assert(c, !(offs & 7) && offs < c->leb_size);
 ubifs_assert(c, type >= 0 && type < UBIFS_NODE_TYPES_CNT);

 spin_lock(&wbuf->lock);
 overlap = (lnum == wbuf->lnum && offs + len > wbuf->offs);
 if (!overlap) {

  spin_unlock(&wbuf->lock);
  return ubifs_read_node(c, buf, type, len, lnum, offs);
 }


 rlen = wbuf->offs - offs;
 if (rlen < 0)
  rlen = 0;


 memcpy(buf + rlen, wbuf->buf + offs + rlen - wbuf->offs, len - rlen);
 spin_unlock(&wbuf->lock);

 if (rlen > 0) {

  err = ubifs_leb_read(c, lnum, buf, offs, rlen, 0);
  if (err && err != -EBADMSG)
   return err;
 }

 if (type != ch->node_type) {
  ubifs_err(c, "bad node type (%d but expected %d)",
     ch->node_type, type);
  goto out;
 }

 err = ubifs_check_node(c, buf, lnum, offs, 0, 0);
 if (err) {
  ubifs_err(c, "expected node type %d", type);
  return err;
 }

 rlen = le32_to_cpu(ch->len);
 if (rlen != len) {
  ubifs_err(c, "bad node length %d, expected %d", rlen, len);
  goto out;
 }

 return 0;

out:
 ubifs_err(c, "bad node at LEB %d:%d", lnum, offs);
 ubifs_dump_node(c, buf);
 dump_stack();
 return -EINVAL;
}
