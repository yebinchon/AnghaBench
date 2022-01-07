
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct jffs2_sb_info {scalar_t__ wbuf_len; scalar_t__ wbuf_ofs; scalar_t__ wbuf; int wbuf_sem; int wbuf_pagesize; int mtd; } ;
typedef scalar_t__ loff_t ;


 int EBADMSG ;
 int EUCLEAN ;
 scalar_t__ SECTOR_ADDR (scalar_t__) ;
 int down_read (int *) ;
 int jffs2_is_writebuffered (struct jffs2_sb_info*) ;
 int memcpy (int *,scalar_t__,scalar_t__) ;
 int mtd_read (int ,scalar_t__,size_t,size_t*,int *) ;
 int pr_warn (char*,size_t,scalar_t__) ;
 int up_read (int *) ;

int jffs2_flash_read(struct jffs2_sb_info *c, loff_t ofs, size_t len, size_t *retlen, u_char *buf)
{
 loff_t orbf = 0, owbf = 0, lwbf = 0;
 int ret;

 if (!jffs2_is_writebuffered(c))
  return mtd_read(c->mtd, ofs, len, retlen, buf);


 down_read(&c->wbuf_sem);
 ret = mtd_read(c->mtd, ofs, len, retlen, buf);

 if ( (ret == -EBADMSG || ret == -EUCLEAN) && (*retlen == len) ) {
  if (ret == -EBADMSG)
   pr_warn("mtd->read(0x%zx bytes from 0x%llx) returned ECC error\n",
    len, ofs);
  ret = 0;
 }


 if (!c->wbuf_pagesize || !c->wbuf_len)
  goto exit;


 if (SECTOR_ADDR(ofs) != SECTOR_ADDR(c->wbuf_ofs))
  goto exit;

 if (ofs >= c->wbuf_ofs) {
  owbf = (ofs - c->wbuf_ofs);
  if (owbf > c->wbuf_len)
   goto exit;
  lwbf = c->wbuf_len - owbf;
  if (lwbf > len)
   lwbf = len;
 } else {
  orbf = (c->wbuf_ofs - ofs);
  if (orbf > len)
   goto exit;
  lwbf = len - orbf;
  if (lwbf > c->wbuf_len)
   lwbf = c->wbuf_len;
 }
 if (lwbf > 0)
  memcpy(buf+orbf,c->wbuf+owbf,lwbf);

exit:
 up_read(&c->wbuf_sem);
 return ret;
}
