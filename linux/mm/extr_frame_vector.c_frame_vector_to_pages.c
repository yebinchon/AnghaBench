
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct frame_vector {int is_pfns; int nr_frames; } ;


 int EINVAL ;
 unsigned long* frame_vector_pfns (struct frame_vector*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;

int frame_vector_to_pages(struct frame_vector *vec)
{
 int i;
 unsigned long *nums;
 struct page **pages;

 if (!vec->is_pfns)
  return 0;
 nums = frame_vector_pfns(vec);
 for (i = 0; i < vec->nr_frames; i++)
  if (!pfn_valid(nums[i]))
   return -EINVAL;
 pages = (struct page **)nums;
 for (i = 0; i < vec->nr_frames; i++)
  pages[i] = pfn_to_page(nums[i]);
 vec->is_pfns = 0;
 return 0;
}
