
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int journal_rwsem; struct f2fs_journal* journal; } ;
typedef void* nid_t ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {int block_addr; } ;


 int CURSEG_HOT_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int ) ;
 scalar_t__ NULL_ADDR ;
 int add_free_nid (struct f2fs_sb_info*,void*,int,int) ;
 int down_read (int *) ;
 void* le32_to_cpu (int ) ;
 TYPE_1__ nat_in_journal (struct f2fs_journal*,int) ;
 int nats_in_cursum (struct f2fs_journal*) ;
 int nid_in_journal (struct f2fs_journal*,int) ;
 int remove_free_nid (struct f2fs_sb_info*,void*) ;
 int up_read (int *) ;

__attribute__((used)) static void scan_curseg_cache(struct f2fs_sb_info *sbi)
{
 struct curseg_info *curseg = CURSEG_I(sbi, CURSEG_HOT_DATA);
 struct f2fs_journal *journal = curseg->journal;
 int i;

 down_read(&curseg->journal_rwsem);
 for (i = 0; i < nats_in_cursum(journal); i++) {
  block_t addr;
  nid_t nid;

  addr = le32_to_cpu(nat_in_journal(journal, i).block_addr);
  nid = le32_to_cpu(nid_in_journal(journal, i));
  if (addr == NULL_ADDR)
   add_free_nid(sbi, nid, 1, 0);
  else
   remove_free_nid(sbi, nid);
 }
 up_read(&curseg->journal_rwsem);
}
