
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_write_ctxt {int w_target_from; unsigned int w_target_to; int w_clen; struct ocfs2_write_cluster_desc* w_desc; scalar_t__ w_large_pages; } ;
struct ocfs2_write_cluster_desc {int c_cpos; scalar_t__ c_needs_zero; } ;
struct ocfs2_super {int dummy; } ;
typedef int loff_t ;


 int PAGE_SIZE ;
 int ocfs2_figure_cluster_boundaries (struct ocfs2_super*,int ,unsigned int*,unsigned int*) ;

__attribute__((used)) static void ocfs2_set_target_boundaries(struct ocfs2_super *osb,
     struct ocfs2_write_ctxt *wc,
     loff_t pos, unsigned len, int alloc)
{
 struct ocfs2_write_cluster_desc *desc;

 wc->w_target_from = pos & (PAGE_SIZE - 1);
 wc->w_target_to = wc->w_target_from + len;

 if (alloc == 0)
  return;
 if (wc->w_large_pages) {






  desc = &wc->w_desc[0];
  if (desc->c_needs_zero)
   ocfs2_figure_cluster_boundaries(osb,
       desc->c_cpos,
       &wc->w_target_from,
       ((void*)0));

  desc = &wc->w_desc[wc->w_clen - 1];
  if (desc->c_needs_zero)
   ocfs2_figure_cluster_boundaries(osb,
       desc->c_cpos,
       ((void*)0),
       &wc->w_target_to);
 } else {
  wc->w_target_from = 0;
  wc->w_target_to = PAGE_SIZE;
 }
}
