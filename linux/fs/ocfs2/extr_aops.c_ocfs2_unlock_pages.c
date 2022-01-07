
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_write_ctxt {int w_num_pages; int ** w_pages; int * w_target_page; scalar_t__ w_target_locked; } ;


 int BUG_ON (int) ;
 int mark_page_accessed (int *) ;
 int ocfs2_unlock_and_free_pages (int **,int) ;
 int put_page (int *) ;

__attribute__((used)) static void ocfs2_unlock_pages(struct ocfs2_write_ctxt *wc)
{
 int i;






 if (wc->w_target_locked) {
  BUG_ON(!wc->w_target_page);
  for (i = 0; i < wc->w_num_pages; i++) {
   if (wc->w_target_page == wc->w_pages[i]) {
    wc->w_pages[i] = ((void*)0);
    break;
   }
  }
  mark_page_accessed(wc->w_target_page);
  put_page(wc->w_target_page);
 }
 ocfs2_unlock_and_free_pages(wc->w_pages, wc->w_num_pages);
}
