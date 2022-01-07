
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct frame_vector {int got_ref; int nr_frames; } ;


 int IS_ERR (struct page**) ;
 scalar_t__ WARN_ON (int ) ;
 struct page** frame_vector_pages (struct frame_vector*) ;
 int put_page (struct page*) ;

void put_vaddr_frames(struct frame_vector *vec)
{
 int i;
 struct page **pages;

 if (!vec->got_ref)
  goto out;
 pages = frame_vector_pages(vec);





 if (WARN_ON(IS_ERR(pages)))
  goto out;
 for (i = 0; i < vec->nr_frames; i++)
  put_page(pages[i]);
 vec->got_ref = 0;
out:
 vec->nr_frames = 0;
}
