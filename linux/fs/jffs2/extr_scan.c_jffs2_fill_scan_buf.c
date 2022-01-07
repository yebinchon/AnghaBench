
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct jffs2_sb_info {int dummy; } ;


 int EIO ;
 int jffs2_dbg (int,char*,size_t,size_t,...) ;
 int jffs2_flash_read (struct jffs2_sb_info*,size_t,size_t,size_t*,void*) ;

__attribute__((used)) static int jffs2_fill_scan_buf(struct jffs2_sb_info *c, void *buf,
          uint32_t ofs, uint32_t len)
{
 int ret;
 size_t retlen;

 ret = jffs2_flash_read(c, ofs, len, &retlen, buf);
 if (ret) {
  jffs2_dbg(1, "mtd->read(0x%x bytes from 0x%x) returned %d\n",
     len, ofs, ret);
  return ret;
 }
 if (retlen < len) {
  jffs2_dbg(1, "Read at 0x%x gave only 0x%zx bytes\n",
     ofs, retlen);
  return -EIO;
 }
 return 0;
}
