
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct super_block {int dummy; } ;
typedef unsigned int pgoff_t ;
struct TYPE_2__ {unsigned int s_clustersize_bits; } ;


 TYPE_1__* OCFS2_SB (struct super_block*) ;
 unsigned int PAGE_SHIFT ;

__attribute__((used)) static inline pgoff_t ocfs2_align_clusters_to_page_index(struct super_block *sb,
       u32 clusters)
{
 unsigned int cbits = OCFS2_SB(sb)->s_clustersize_bits;
        pgoff_t index = clusters;

 if (PAGE_SHIFT > cbits) {
  index = (pgoff_t)clusters >> (PAGE_SHIFT - cbits);
 } else if (PAGE_SHIFT < cbits) {
  index = (pgoff_t)clusters << (cbits - PAGE_SHIFT);
 }

 return index;
}
