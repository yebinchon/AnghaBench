
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int sb_chk; int sb_cp_table; } ;


 int GFP_KERNEL ;
 int hpfs_is_name_long (unsigned char*,unsigned int) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 unsigned char* kmalloc (unsigned int,int ) ;
 unsigned char locase (int ,unsigned char) ;
 int pr_cont (char*,...) ;
 int pr_err (char*) ;

unsigned char *hpfs_translate_name(struct super_block *s, unsigned char *from,
     unsigned len, int lc, int lng)
{
 unsigned char *to;
 int i;
 if (hpfs_sb(s)->sb_chk >= 2) if (hpfs_is_name_long(from, len) != lng) {
  pr_err("Long name flag mismatch - name ");
  for (i = 0; i < len; i++)
   pr_cont("%c", from[i]);
  pr_cont(" misidentified as %s.\n", lng ? "short" : "long");
  pr_err("It's nothing serious. It could happen because of bug in OS/2.\nSet checks=normal to disable this message.\n");
 }
 if (!lc) return from;
 if (!(to = kmalloc(len, GFP_KERNEL))) {
  pr_err("can't allocate memory for name conversion buffer\n");
  return from;
 }
 for (i = 0; i < len; i++) to[i] = locase(hpfs_sb(s)->sb_cp_table,from[i]);
 return to;
}
