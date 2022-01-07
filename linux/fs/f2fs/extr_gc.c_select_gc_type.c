
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int gc_mode; } ;


 int BG_GC ;
 int GC_CB ;
 int GC_GREEDY ;




__attribute__((used)) static int select_gc_type(struct f2fs_sb_info *sbi, int gc_type)
{
 int gc_mode = (gc_type == BG_GC) ? GC_CB : GC_GREEDY;

 switch (sbi->gc_mode) {
 case 130:
  gc_mode = GC_CB;
  break;
 case 129:
 case 128:
  gc_mode = GC_GREEDY;
  break;
 }
 return gc_mode;
}
