
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {int state; int nid; int list; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int free_nid_root; int * nid_cnt; } ;
typedef enum nid_state { ____Placeholder_nid_state } nid_state ;


 int FREE_NID ;
 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int list_del (int *) ;
 int radix_tree_delete (int *,int ) ;

__attribute__((used)) static void __remove_free_nid(struct f2fs_sb_info *sbi,
   struct free_nid *i, enum nid_state state)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);

 f2fs_bug_on(sbi, state != i->state);
 nm_i->nid_cnt[state]--;
 if (state == FREE_NID)
  list_del(&i->list);
 radix_tree_delete(&nm_i->free_nid_root, i->nid);
}
