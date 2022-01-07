
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_iovec {int dummy; } ;


 int EINVAL ;
 unsigned int rds_pages_in_vec (struct rds_iovec*) ;

__attribute__((used)) static int rds_rdma_pages(struct rds_iovec iov[], int nr_iovecs)
{
 int tot_pages = 0;
 unsigned int nr_pages;
 unsigned int i;


 for (i = 0; i < nr_iovecs; i++) {
  nr_pages = rds_pages_in_vec(&iov[i]);
  if (nr_pages == 0)
   return -EINVAL;

  tot_pages += nr_pages;





  if (tot_pages < 0)
   return -EINVAL;
 }

 return tot_pages;
}
