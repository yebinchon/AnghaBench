
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {int state; int list; int nid; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int free_nid_list; int * nid_cnt; int free_nid_root; } ;
typedef enum nid_state { ____Placeholder_nid_state } nid_state ;


 int FREE_NID ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int list_add_tail (int *,int *) ;
 int radix_tree_insert (int *,int ,struct free_nid*) ;

__attribute__((used)) static int __insert_free_nid(struct f2fs_sb_info *sbi,
   struct free_nid *i, enum nid_state state)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);

 int err = radix_tree_insert(&nm_i->free_nid_root, i->nid, i);
 if (err)
  return err;

 f2fs_bug_on(sbi, state != i->state);
 nm_i->nid_cnt[state]++;
 if (state == FREE_NID)
  list_add_tail(&i->list, &nm_i->free_nid_list);
 return 0;
}
