
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int journal_rwsem; struct f2fs_journal* journal; } ;
struct TYPE_2__ {int sit_entry_set; } ;


 int CURSEG_COLD_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int ) ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int __mark_sit_entry_dirty (struct f2fs_sb_info*,unsigned int) ;
 int add_sit_entry (unsigned int,int *) ;
 int down_write (int *) ;
 unsigned int le32_to_cpu (int ) ;
 int segno_in_journal (struct f2fs_journal*,int) ;
 int sits_in_cursum (struct f2fs_journal*) ;
 int up_write (int *) ;
 int update_sits_in_cursum (struct f2fs_journal*,int) ;

__attribute__((used)) static void remove_sits_in_journal(struct f2fs_sb_info *sbi)
{
 struct curseg_info *curseg = CURSEG_I(sbi, CURSEG_COLD_DATA);
 struct f2fs_journal *journal = curseg->journal;
 int i;

 down_write(&curseg->journal_rwsem);
 for (i = 0; i < sits_in_cursum(journal); i++) {
  unsigned int segno;
  bool dirtied;

  segno = le32_to_cpu(segno_in_journal(journal, i));
  dirtied = __mark_sit_entry_dirty(sbi, segno);

  if (!dirtied)
   add_sit_entry(segno, &SM_I(sbi)->sit_entry_set);
 }
 update_sits_in_cursum(journal, -i);
 up_write(&curseg->journal_rwsem);
}
