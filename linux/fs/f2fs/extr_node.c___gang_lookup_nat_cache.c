
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat_entry {int dummy; } ;
struct f2fs_nm_info {int nat_root; } ;
typedef int nid_t ;


 unsigned int radix_tree_gang_lookup (int *,void**,int ,unsigned int) ;

__attribute__((used)) static unsigned int __gang_lookup_nat_cache(struct f2fs_nm_info *nm_i,
  nid_t start, unsigned int nr, struct nat_entry **ep)
{
 return radix_tree_gang_lookup(&nm_i->nat_root, (void **)ep, start, nr);
}
