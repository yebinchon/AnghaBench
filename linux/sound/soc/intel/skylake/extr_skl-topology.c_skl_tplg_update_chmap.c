
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_module_fmt {int ch_map; } ;



__attribute__((used)) static void skl_tplg_update_chmap(struct skl_module_fmt *fmt, int chs)
{
 int slot_map = 0xFFFFFFFF;
 int start_slot = 0;
 int i;

 for (i = 0; i < chs; i++) {




  slot_map &= (~(0xF << (4 * i)) | (start_slot << (4 * i)));
  start_slot++;
 }
 fmt->ch_map = slot_map;
}
