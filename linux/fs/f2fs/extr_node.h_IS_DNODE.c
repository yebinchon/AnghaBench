
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int NIDS_PER_BLOCK ;
 scalar_t__ f2fs_has_xattr_block (unsigned int) ;
 unsigned int ofs_of_node (struct page*) ;

__attribute__((used)) static inline bool IS_DNODE(struct page *node_page)
{
 unsigned int ofs = ofs_of_node(node_page);

 if (f2fs_has_xattr_block(ofs))
  return 1;

 if (ofs == 3 || ofs == 4 + NIDS_PER_BLOCK ||
   ofs == 5 + 2 * NIDS_PER_BLOCK)
  return 0;
 if (ofs >= 6 + 2 * NIDS_PER_BLOCK) {
  ofs -= 6 + 2 * NIDS_PER_BLOCK;
  if (!((long int)ofs % (NIDS_PER_BLOCK + 1)))
   return 0;
 }
 return 1;
}
