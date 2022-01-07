
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_unclean_leb {int lnum; int endpt; } ;
struct ubifs_info {int min_io_size; int sbuf; } ;
struct ubifs_ch {int len; } ;


 int ALIGN (int,int) ;
 int EBADMSG ;
 int EUCLEAN ;
 int SCANNED_A_NODE ;
 int SCANNED_EMPTY_SPACE ;
 int cond_resched () ;
 int dbg_rcvry (char*,int,...) ;
 int le32_to_cpu (int ) ;
 int ubifs_err (struct ubifs_info*,char*,int,int) ;
 int ubifs_leb_change (struct ubifs_info*,int,void*,int) ;
 int ubifs_leb_read (struct ubifs_info*,int,void*,int,int,int ) ;
 int ubifs_leb_unmap (struct ubifs_info*,int) ;
 int ubifs_pad (struct ubifs_info*,void*,int) ;
 int ubifs_scan_a_node (struct ubifs_info*,void*,int,int,int,int) ;
 int ubifs_scanned_corruption (struct ubifs_info*,int,int,void*) ;

__attribute__((used)) static int clean_an_unclean_leb(struct ubifs_info *c,
    struct ubifs_unclean_leb *ucleb, void *sbuf)
{
 int err, lnum = ucleb->lnum, offs = 0, len = ucleb->endpt, quiet = 1;
 void *buf = sbuf;

 dbg_rcvry("LEB %d len %d", lnum, len);

 if (len == 0) {

  return ubifs_leb_unmap(c, lnum);
 }

 err = ubifs_leb_read(c, lnum, buf, offs, len, 0);
 if (err && err != -EBADMSG)
  return err;

 while (len >= 8) {
  int ret;

  cond_resched();


  ret = ubifs_scan_a_node(c, buf, len, lnum, offs, quiet);

  if (ret == SCANNED_A_NODE) {

   struct ubifs_ch *ch = buf;
   int node_len;

   node_len = ALIGN(le32_to_cpu(ch->len), 8);
   offs += node_len;
   buf += node_len;
   len -= node_len;
   continue;
  }

  if (ret > 0) {

   offs += ret;
   buf += ret;
   len -= ret;
   continue;
  }

  if (ret == SCANNED_EMPTY_SPACE) {
   ubifs_err(c, "unexpected empty space at %d:%d",
      lnum, offs);
   return -EUCLEAN;
  }

  if (quiet) {

   quiet = 0;
   continue;
  }

  ubifs_scanned_corruption(c, lnum, offs, buf);
  return -EUCLEAN;
 }


 len = ALIGN(ucleb->endpt, c->min_io_size);
 if (len > ucleb->endpt) {
  int pad_len = len - ALIGN(ucleb->endpt, 8);

  if (pad_len > 0) {
   buf = c->sbuf + len - pad_len;
   ubifs_pad(c, buf, pad_len);
  }
 }


 err = ubifs_leb_change(c, lnum, sbuf, len);
 if (err)
  return err;

 dbg_rcvry("cleaned LEB %d", lnum);

 return 0;
}
