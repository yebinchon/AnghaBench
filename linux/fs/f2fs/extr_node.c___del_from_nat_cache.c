
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
struct f2fs_nm_info {int nat_cnt; int nat_root; } ;


 int __free_nat_entry (struct nat_entry*) ;
 int nat_get_nid (struct nat_entry*) ;
 int radix_tree_delete (int *,int ) ;

__attribute__((used)) static void __del_from_nat_cache(struct f2fs_nm_info *nm_i, struct nat_entry *e)
{
 radix_tree_delete(&nm_i->nat_root, nat_get_nid(e));
 nm_i->nat_cnt--;
 __free_nat_entry(e);
}
