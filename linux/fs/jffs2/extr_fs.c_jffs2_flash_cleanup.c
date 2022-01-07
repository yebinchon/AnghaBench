
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;


 scalar_t__ jffs2_cleanmarker_oob (struct jffs2_sb_info*) ;
 scalar_t__ jffs2_dataflash (struct jffs2_sb_info*) ;
 int jffs2_dataflash_cleanup (struct jffs2_sb_info*) ;
 int jffs2_nand_flash_cleanup (struct jffs2_sb_info*) ;
 scalar_t__ jffs2_nor_wbuf_flash (struct jffs2_sb_info*) ;
 int jffs2_nor_wbuf_flash_cleanup (struct jffs2_sb_info*) ;
 scalar_t__ jffs2_ubivol (struct jffs2_sb_info*) ;
 int jffs2_ubivol_cleanup (struct jffs2_sb_info*) ;

void jffs2_flash_cleanup(struct jffs2_sb_info *c) {

 if (jffs2_cleanmarker_oob(c)) {
  jffs2_nand_flash_cleanup(c);
 }


 if (jffs2_dataflash(c)) {
  jffs2_dataflash_cleanup(c);
 }


 if (jffs2_nor_wbuf_flash(c)) {
  jffs2_nor_wbuf_flash_cleanup(c);
 }


 if (jffs2_ubivol(c)) {
  jffs2_ubivol_cleanup(c);
 }
}
