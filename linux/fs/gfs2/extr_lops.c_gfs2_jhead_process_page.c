
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct gfs2_log_header_host {int dummy; } ;
struct gfs2_jdesc {TYPE_1__* jd_inode; } ;
struct TYPE_2__ {int i_mapping; } ;


 scalar_t__ PageError (struct page*) ;
 struct page* find_get_page (int ,unsigned long) ;
 int gfs2_jhead_pg_srch (struct gfs2_jdesc*,struct gfs2_log_header_host*,struct page*) ;
 int put_page (struct page*) ;
 int wait_on_page_locked (struct page*) ;

__attribute__((used)) static void gfs2_jhead_process_page(struct gfs2_jdesc *jd, unsigned long index,
        struct gfs2_log_header_host *head,
        bool *done)
{
 struct page *page;

 page = find_get_page(jd->jd_inode->i_mapping, index);
 wait_on_page_locked(page);

 if (PageError(page))
  *done = 1;

 if (!*done)
  *done = gfs2_jhead_pg_srch(jd, head, page);

 put_page(page);
 put_page(page);
}
