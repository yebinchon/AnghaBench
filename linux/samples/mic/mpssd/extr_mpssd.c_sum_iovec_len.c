
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_copy_desc {unsigned int iovcnt; TYPE_1__* iov; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ iov_len; } ;



__attribute__((used)) static ssize_t
sum_iovec_len(struct mic_copy_desc *copy)
{
 ssize_t sum = 0;
 unsigned int i;

 for (i = 0; i < copy->iovcnt; i++)
  sum += copy->iov[i].iov_len;
 return sum;
}
