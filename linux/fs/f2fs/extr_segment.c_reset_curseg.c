
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct summary_footer {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {int segno; TYPE_1__* sum_blk; int next_segno; scalar_t__ next_blkoff; int zone; } ;
struct TYPE_2__ {struct summary_footer footer; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 int GET_ZONE_FROM_SEG (struct f2fs_sb_info*,int ) ;
 scalar_t__ IS_DATASEG (int) ;
 scalar_t__ IS_NODESEG (int) ;
 int NULL_SEGNO ;
 int SET_SUM_TYPE (struct summary_footer*,int ) ;
 int SUM_TYPE_DATA ;
 int SUM_TYPE_NODE ;
 int __set_sit_entry_type (struct f2fs_sb_info*,int,int ,int) ;
 int memset (struct summary_footer*,int ,int) ;

__attribute__((used)) static void reset_curseg(struct f2fs_sb_info *sbi, int type, int modified)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 struct summary_footer *sum_footer;

 curseg->segno = curseg->next_segno;
 curseg->zone = GET_ZONE_FROM_SEG(sbi, curseg->segno);
 curseg->next_blkoff = 0;
 curseg->next_segno = NULL_SEGNO;

 sum_footer = &(curseg->sum_blk->footer);
 memset(sum_footer, 0, sizeof(struct summary_footer));
 if (IS_DATASEG(type))
  SET_SUM_TYPE(sum_footer, SUM_TYPE_DATA);
 if (IS_NODESEG(type))
  SET_SUM_TYPE(sum_footer, SUM_TYPE_NODE);
 __set_sit_entry_type(sbi, type, curseg->segno, modified);
}
