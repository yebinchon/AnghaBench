
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct page {int dummy; } ;
struct ocfs2_super {int dummy; } ;


 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memset (void*,int ,unsigned int) ;
 int ocfs2_figure_cluster_boundaries (struct ocfs2_super*,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static void ocfs2_clear_page_regions(struct page *page,
         struct ocfs2_super *osb, u32 cpos,
         unsigned from, unsigned to)
{
 void *kaddr;
 unsigned int cluster_start, cluster_end;

 ocfs2_figure_cluster_boundaries(osb, cpos, &cluster_start, &cluster_end);

 kaddr = kmap_atomic(page);

 if (from || to) {
  if (from > cluster_start)
   memset(kaddr + cluster_start, 0, from - cluster_start);
  if (to < cluster_end)
   memset(kaddr + to, 0, cluster_end - to);
 } else {
  memset(kaddr + cluster_start, 0, cluster_end - cluster_start);
 }

 kunmap_atomic(kaddr);
}
