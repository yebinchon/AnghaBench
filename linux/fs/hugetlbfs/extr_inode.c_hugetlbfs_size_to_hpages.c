
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {unsigned long long max_huge_pages; } ;
typedef enum hugetlbfs_size_type { ____Placeholder_hugetlbfs_size_type } hugetlbfs_size_type ;


 int NO_SIZE ;
 int SIZE_PERCENT ;
 int do_div (unsigned long long,int) ;
 unsigned long long huge_page_shift (struct hstate*) ;

__attribute__((used)) static long
hugetlbfs_size_to_hpages(struct hstate *h, unsigned long long size_opt,
    enum hugetlbfs_size_type val_type)
{
 if (val_type == NO_SIZE)
  return -1;

 if (val_type == SIZE_PERCENT) {
  size_opt <<= huge_page_shift(h);
  size_opt *= h->max_huge_pages;
  do_div(size_opt, 100);
 }

 size_opt >>= huge_page_shift(h);
 return size_opt;
}
