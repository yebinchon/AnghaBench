
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvec {void* iov_base; int iov_len; } ;


 int PAGE_SIZE ;
 int get_kernel_pages (struct kvec const*,int,int,struct page**) ;

int get_kernel_page(unsigned long start, int write, struct page **pages)
{
 const struct kvec kiov = {
  .iov_base = (void *)start,
  .iov_len = PAGE_SIZE
 };

 return get_kernel_pages(&kiov, 1, write, pages);
}
