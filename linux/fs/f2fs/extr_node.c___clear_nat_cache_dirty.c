
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry_set {int entry_cnt; } ;
struct nat_entry {int list; } ;
struct f2fs_nm_info {int dirty_nat_cnt; int nat_list_lock; int nat_entries; } ;


 int IS_DIRTY ;
 int list_move_tail (int *,int *) ;
 int set_nat_flag (struct nat_entry*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __clear_nat_cache_dirty(struct f2fs_nm_info *nm_i,
  struct nat_entry_set *set, struct nat_entry *ne)
{
 spin_lock(&nm_i->nat_list_lock);
 list_move_tail(&ne->list, &nm_i->nat_entries);
 spin_unlock(&nm_i->nat_list_lock);

 set_nat_flag(ne, IS_DIRTY, 0);
 set->entry_cnt--;
 nm_i->dirty_nat_cnt--;
}
