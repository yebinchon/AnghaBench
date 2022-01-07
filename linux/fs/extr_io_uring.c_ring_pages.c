
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int dummy; } ;


 int array_size (int,unsigned int) ;
 size_t get_order (int ) ;
 int rings_size (unsigned int,unsigned int,int *) ;

__attribute__((used)) static unsigned long ring_pages(unsigned sq_entries, unsigned cq_entries)
{
 size_t pages;

 pages = (size_t)1 << get_order(
  rings_size(sq_entries, cq_entries, ((void*)0)));
 pages += (size_t)1 << get_order(
  array_size(sizeof(struct io_uring_sqe), sq_entries));

 return pages;
}
