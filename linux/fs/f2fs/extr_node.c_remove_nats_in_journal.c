
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nid_list_lock; int available_nids; } ;
struct f2fs_nat_entry {int block_addr; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int journal_rwsem; struct f2fs_journal* journal; } ;
typedef scalar_t__ nid_t ;


 int CURSEG_HOT_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int ) ;
 int IS_DIRTY ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 scalar_t__ NULL_ADDR ;
 struct nat_entry* __alloc_nat_entry (scalar_t__,int) ;
 int __init_nat_entry (struct f2fs_nm_info*,struct nat_entry*,struct f2fs_nat_entry*,int) ;
 struct nat_entry* __lookup_nat_cache (struct f2fs_nm_info*,scalar_t__) ;
 int __set_nat_cache_dirty (struct f2fs_nm_info*,struct nat_entry*) ;
 int down_write (int *) ;
 int get_nat_flag (struct nat_entry*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct f2fs_nat_entry nat_in_journal (struct f2fs_journal*,int) ;
 int nats_in_cursum (struct f2fs_journal*) ;
 int nid_in_journal (struct f2fs_journal*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int update_nats_in_cursum (struct f2fs_journal*,int) ;

__attribute__((used)) static void remove_nats_in_journal(struct f2fs_sb_info *sbi)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);
 struct curseg_info *curseg = CURSEG_I(sbi, CURSEG_HOT_DATA);
 struct f2fs_journal *journal = curseg->journal;
 int i;

 down_write(&curseg->journal_rwsem);
 for (i = 0; i < nats_in_cursum(journal); i++) {
  struct nat_entry *ne;
  struct f2fs_nat_entry raw_ne;
  nid_t nid = le32_to_cpu(nid_in_journal(journal, i));

  raw_ne = nat_in_journal(journal, i);

  ne = __lookup_nat_cache(nm_i, nid);
  if (!ne) {
   ne = __alloc_nat_entry(nid, 1);
   __init_nat_entry(nm_i, ne, &raw_ne, 1);
  }






  if (!get_nat_flag(ne, IS_DIRTY) &&
    le32_to_cpu(raw_ne.block_addr) == NULL_ADDR) {
   spin_lock(&nm_i->nid_list_lock);
   nm_i->available_nids--;
   spin_unlock(&nm_i->nid_list_lock);
  }

  __set_nat_cache_dirty(nm_i, ne);
 }
 update_nats_in_cursum(journal, -i);
 up_write(&curseg->journal_rwsem);
}
