
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring {int dummy; } ;
struct TYPE_2__ {int iov_len; struct io_data* iov_base; } ;
struct io_data {int first_len; TYPE_1__ iov; int first_offset; int offset; scalar_t__ read; } ;


 int io_uring_submit (struct io_uring*) ;
 int queue_prepped (struct io_uring*,struct io_data*) ;

__attribute__((used)) static void queue_write(struct io_uring *ring, struct io_data *data)
{
 data->read = 0;
 data->offset = data->first_offset;

 data->iov.iov_base = data + 1;
 data->iov.iov_len = data->first_len;

 queue_prepped(ring, data);
 io_uring_submit(ring);
}
