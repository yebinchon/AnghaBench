
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct frame_vector {int is_pfns; int nr_frames; scalar_t__ ptrs; } ;


 unsigned long page_to_pfn (struct page*) ;

void frame_vector_to_pfns(struct frame_vector *vec)
{
 int i;
 unsigned long *nums;
 struct page **pages;

 if (vec->is_pfns)
  return;
 pages = (struct page **)(vec->ptrs);
 nums = (unsigned long *)pages;
 for (i = 0; i < vec->nr_frames; i++)
  nums[i] = page_to_pfn(pages[i]);
 vec->is_pfns = 1;
}
