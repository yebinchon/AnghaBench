
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {int state; int list; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int free_nid_list; int * nid_cnt; } ;
typedef enum nid_state { ____Placeholder_nid_state } nid_state ;


 int BUG_ON (int) ;

 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;

 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

__attribute__((used)) static void __move_free_nid(struct f2fs_sb_info *sbi, struct free_nid *i,
   enum nid_state org_state, enum nid_state dst_state)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);

 f2fs_bug_on(sbi, org_state != i->state);
 i->state = dst_state;
 nm_i->nid_cnt[org_state]--;
 nm_i->nid_cnt[dst_state]++;

 switch (dst_state) {
 case 128:
  list_del(&i->list);
  break;
 case 129:
  list_add_tail(&i->list, &nm_i->free_nid_list);
  break;
 default:
  BUG_ON(1);
 }
}
