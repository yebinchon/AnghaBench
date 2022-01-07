
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int dummy; } ;
struct iov_iter {int dummy; } ;
typedef int ssize_t ;



__attribute__((used)) static ssize_t udf_adinicb_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
{

 return 0;
}
