
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_wbuf {int dummy; } ;
struct ubifs_info {int dummy; } ;
struct bu_info {int cnt; int buf_len; TYPE_1__* zbranch; void* buf; int key; int gc_seq; } ;
struct TYPE_2__ {int lnum; int offs; int len; } ;


 int ALIGN (int,int) ;
 int EAGAIN ;
 int EBADMSG ;
 int EINVAL ;
 int dbg_tnck (int *,char*) ;
 int dump_stack () ;
 scalar_t__ maybe_leb_gced (struct ubifs_info*,int,int ) ;
 int read_wbuf (struct ubifs_wbuf*,void*,int,int,int) ;
 int ubifs_err (struct ubifs_info*,char*,int,int,...) ;
 struct ubifs_wbuf* ubifs_get_wbuf (struct ubifs_info*,int) ;
 int ubifs_leb_read (struct ubifs_info*,int,void*,int,int,int ) ;
 int validate_data_node (struct ubifs_info*,void*,TYPE_1__*) ;

int ubifs_tnc_bulk_read(struct ubifs_info *c, struct bu_info *bu)
{
 int lnum = bu->zbranch[0].lnum, offs = bu->zbranch[0].offs, len, err, i;
 struct ubifs_wbuf *wbuf;
 void *buf;

 len = bu->zbranch[bu->cnt - 1].offs;
 len += bu->zbranch[bu->cnt - 1].len - offs;
 if (len > bu->buf_len) {
  ubifs_err(c, "buffer too small %d vs %d", bu->buf_len, len);
  return -EINVAL;
 }


 wbuf = ubifs_get_wbuf(c, lnum);
 if (wbuf)
  err = read_wbuf(wbuf, bu->buf, len, lnum, offs);
 else
  err = ubifs_leb_read(c, lnum, bu->buf, offs, len, 0);


 if (maybe_leb_gced(c, lnum, bu->gc_seq))
  return -EAGAIN;

 if (err && err != -EBADMSG) {
  ubifs_err(c, "failed to read from LEB %d:%d, error %d",
     lnum, offs, err);
  dump_stack();
  dbg_tnck(&bu->key, "key ");
  return err;
 }


 buf = bu->buf;
 for (i = 0; i < bu->cnt; i++) {
  err = validate_data_node(c, buf, &bu->zbranch[i]);
  if (err)
   return err;
  buf = buf + ALIGN(bu->zbranch[i].len, 8);
 }

 return 0;
}
