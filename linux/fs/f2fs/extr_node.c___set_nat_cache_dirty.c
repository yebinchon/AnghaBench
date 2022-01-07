
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry_set {int entry_list; int entry_cnt; } ;
struct nat_entry {int list; } ;
struct f2fs_nm_info {int nat_list_lock; int dirty_nat_cnt; } ;


 int IS_DIRTY ;
 int IS_PREALLOC ;
 scalar_t__ NEW_ADDR ;
 struct nat_entry_set* __grab_nat_entry_set (struct f2fs_nm_info*,struct nat_entry*) ;
 scalar_t__ get_nat_flag (struct nat_entry*,int ) ;
 int list_del_init (int *) ;
 int list_move_tail (int *,int *) ;
 scalar_t__ nat_get_blkaddr (struct nat_entry*) ;
 int set_nat_flag (struct nat_entry*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __set_nat_cache_dirty(struct f2fs_nm_info *nm_i,
      struct nat_entry *ne)
{
 struct nat_entry_set *head;
 bool new_ne = nat_get_blkaddr(ne) == NEW_ADDR;

 if (!new_ne)
  head = __grab_nat_entry_set(nm_i, ne);






 if (!new_ne && (get_nat_flag(ne, IS_PREALLOC) ||
    !get_nat_flag(ne, IS_DIRTY)))
  head->entry_cnt++;

 set_nat_flag(ne, IS_PREALLOC, new_ne);

 if (get_nat_flag(ne, IS_DIRTY))
  goto refresh_list;

 nm_i->dirty_nat_cnt++;
 set_nat_flag(ne, IS_DIRTY, 1);
refresh_list:
 spin_lock(&nm_i->nat_list_lock);
 if (new_ne)
  list_del_init(&ne->list);
 else
  list_move_tail(&ne->list, &head->entry_list);
 spin_unlock(&nm_i->nat_list_lock);
}
