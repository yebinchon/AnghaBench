
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_nid {int dummy; } ;
struct f2fs_nm_info {int free_nid_root; } ;
typedef int nid_t ;


 struct free_nid* radix_tree_lookup (int *,int ) ;

__attribute__((used)) static struct free_nid *__lookup_free_nid_list(struct f2fs_nm_info *nm_i,
      nid_t n)
{
 return radix_tree_lookup(&nm_i->free_nid_root, n);
}
