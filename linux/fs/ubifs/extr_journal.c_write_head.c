
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int lnum; int offs; int used; } ;
struct ubifs_info {TYPE_1__* jheads; } ;
struct TYPE_2__ {int log_hash; struct ubifs_wbuf wbuf; } ;


 int GCHD ;
 int dbg_jhead (int) ;
 int dbg_jnl (char*,int ,int,int,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info*) ;
 int ubifs_hash_nodes (struct ubifs_info*,void*,int,int ) ;
 int ubifs_wbuf_sync_nolock (struct ubifs_wbuf*) ;
 int ubifs_wbuf_write_nolock (struct ubifs_wbuf*,void*,int) ;

__attribute__((used)) static int write_head(struct ubifs_info *c, int jhead, void *buf, int len,
        int *lnum, int *offs, int sync)
{
 int err;
 struct ubifs_wbuf *wbuf = &c->jheads[jhead].wbuf;

 ubifs_assert(c, jhead != GCHD);

 *lnum = c->jheads[jhead].wbuf.lnum;
 *offs = c->jheads[jhead].wbuf.offs + c->jheads[jhead].wbuf.used;
 dbg_jnl("jhead %s, LEB %d:%d, len %d",
  dbg_jhead(jhead), *lnum, *offs, len);

 if (ubifs_authenticated(c)) {
  err = ubifs_hash_nodes(c, buf, len, c->jheads[jhead].log_hash);
  if (err)
   return err;
 }

 err = ubifs_wbuf_write_nolock(wbuf, buf, len);
 if (err)
  return err;
 if (sync)
  err = ubifs_wbuf_sync_nolock(wbuf);
 return err;
}
