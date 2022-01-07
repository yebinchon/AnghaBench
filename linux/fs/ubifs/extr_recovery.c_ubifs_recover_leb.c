
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_scan_leb {int dummy; } ;
struct ubifs_info {int leb_size; int min_io_size; TYPE_1__* jheads; } ;
struct ubifs_ch {int len; } ;
struct TYPE_2__ {int grouped; } ;


 int ALIGN (int ,int) ;
 int EINVAL ;
 struct ubifs_scan_leb* ERR_PTR (int) ;
 int EUCLEAN ;
 int GCHD ;
 scalar_t__ IS_ERR (struct ubifs_scan_leb*) ;
 int SCANNED_A_BAD_PAD_NODE ;
 int SCANNED_A_CORRUPT_NODE ;
 int SCANNED_A_NODE ;
 int SCANNED_EMPTY_SPACE ;
 int SCANNED_GARBAGE ;
 int clean_buf (struct ubifs_info*,void**,int,int*,int*) ;
 int cond_resched () ;
 int dbg_rcvry (char*,int,int,int,...) ;
 int dbg_scan (char*,int,int,int) ;
 int drop_last_group (struct ubifs_scan_leb*,int*) ;
 int drop_last_node (struct ubifs_scan_leb*,int*) ;
 int first_non_ff (void*,int) ;
 int fix_unclean_leb (struct ubifs_info*,struct ubifs_scan_leb*,int) ;
 int is_empty (void*,int) ;
 int is_last_write (struct ubifs_info*,void*,int) ;
 int le32_to_cpu (int ) ;
 int no_more_nodes (struct ubifs_info*,void*,int,int,int) ;
 int round_down (int,int ) ;
 int ubifs_add_snod (struct ubifs_info*,struct ubifs_scan_leb*,void*,int) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_end_scan (struct ubifs_info*,struct ubifs_scan_leb*,int,int) ;
 int ubifs_err (struct ubifs_info*,char*,int,...) ;
 int ubifs_scan_a_node (struct ubifs_info*,void*,int,int,int,int) ;
 int ubifs_scan_destroy (struct ubifs_scan_leb*) ;
 int ubifs_scanned_corruption (struct ubifs_info*,int,int,void*) ;
 struct ubifs_scan_leb* ubifs_start_scan (struct ubifs_info*,int,int,void*) ;

struct ubifs_scan_leb *ubifs_recover_leb(struct ubifs_info *c, int lnum,
      int offs, void *sbuf, int jhead)
{
 int ret = 0, err, len = c->leb_size - offs, start = offs, min_io_unit;
 int grouped = jhead == -1 ? 0 : c->jheads[jhead].grouped;
 struct ubifs_scan_leb *sleb;
 void *buf = sbuf + offs;

 dbg_rcvry("%d:%d, jhead %d, grouped %d", lnum, offs, jhead, grouped);

 sleb = ubifs_start_scan(c, lnum, offs, sbuf);
 if (IS_ERR(sleb))
  return sleb;

 ubifs_assert(c, len >= 8);
 while (len >= 8) {
  dbg_scan("look at LEB %d:%d (%d bytes left)",
    lnum, offs, len);

  cond_resched();





  ret = ubifs_scan_a_node(c, buf, len, lnum, offs, 1);
  if (ret == SCANNED_A_NODE) {

   struct ubifs_ch *ch = buf;
   int node_len;

   err = ubifs_add_snod(c, sleb, buf, offs);
   if (err)
    goto error;
   node_len = ALIGN(le32_to_cpu(ch->len), 8);
   offs += node_len;
   buf += node_len;
   len -= node_len;
  } else if (ret > 0) {

   offs += ret;
   buf += ret;
   len -= ret;
  } else if (ret == SCANNED_EMPTY_SPACE ||
      ret == SCANNED_GARBAGE ||
      ret == SCANNED_A_BAD_PAD_NODE ||
      ret == SCANNED_A_CORRUPT_NODE) {
   dbg_rcvry("found corruption (%d) at %d:%d",
      ret, lnum, offs);
   break;
  } else {
   ubifs_err(c, "unexpected return value %d", ret);
   err = -EINVAL;
   goto error;
  }
 }

 if (ret == SCANNED_GARBAGE || ret == SCANNED_A_BAD_PAD_NODE) {
  if (!is_last_write(c, buf, offs))
   goto corrupted_rescan;
 } else if (ret == SCANNED_A_CORRUPT_NODE) {
  if (!no_more_nodes(c, buf, len, lnum, offs))
   goto corrupted_rescan;
 } else if (!is_empty(buf, len)) {
  if (!is_last_write(c, buf, offs)) {
   int corruption = first_non_ff(buf, len);





   ubifs_err(c, "corrupt empty space LEB %d:%d, corruption starts at %d",
      lnum, offs, corruption);

   offs += corruption;
   buf += corruption;
   goto corrupted;
  }
 }

 min_io_unit = round_down(offs, c->min_io_size);
 if (grouped)




  drop_last_group(sleb, &offs);

 if (jhead == GCHD) {
  while (offs > min_io_unit)
   drop_last_node(sleb, &offs);
 }

 buf = sbuf + offs;
 len = c->leb_size - offs;

 clean_buf(c, &buf, lnum, &offs, &len);
 ubifs_end_scan(c, sleb, lnum, offs);

 err = fix_unclean_leb(c, sleb, start);
 if (err)
  goto error;

 return sleb;

corrupted_rescan:

 ubifs_err(c, "corruption %d", ret);
 ubifs_scan_a_node(c, buf, len, lnum, offs, 0);
corrupted:
 ubifs_scanned_corruption(c, lnum, offs, buf);
 err = -EUCLEAN;
error:
 ubifs_err(c, "LEB %d scanning failed", lnum);
 ubifs_scan_destroy(sleb);
 return ERR_PTR(err);
}
