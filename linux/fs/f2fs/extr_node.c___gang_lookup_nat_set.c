
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry_set {int dummy; } ;
struct f2fs_nm_info {int nat_set_root; } ;
typedef int nid_t ;


 unsigned int radix_tree_gang_lookup (int *,void**,int ,unsigned int) ;

__attribute__((used)) static unsigned int __gang_lookup_nat_set(struct f2fs_nm_info *nm_i,
  nid_t start, unsigned int nr, struct nat_entry_set **ep)
{
 return radix_tree_gang_lookup(&nm_i->nat_set_root, (void **)ep,
       start, nr);
}
