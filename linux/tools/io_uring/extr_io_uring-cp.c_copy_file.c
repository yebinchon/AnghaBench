
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_cqe {scalar_t__ res; } ;
struct io_uring {int dummy; } ;
struct TYPE_2__ {size_t iov_len; int iov_base; } ;
struct io_data {scalar_t__ first_len; scalar_t__ read; int offset; TYPE_1__ iov; } ;
typedef scalar_t__ off_t ;


 scalar_t__ BS ;
 scalar_t__ EAGAIN ;
 unsigned long QD ;
 int fprintf (int ,char*,char*) ;
 int free (struct io_data*) ;
 struct io_data* io_uring_cqe_get_data (struct io_uring_cqe*) ;
 int io_uring_cqe_seen (struct io_uring*,struct io_uring_cqe*) ;
 int io_uring_peek_cqe (struct io_uring*,struct io_uring_cqe**) ;
 int io_uring_submit (struct io_uring*) ;
 int io_uring_wait_cqe (struct io_uring*,struct io_uring_cqe**) ;
 int queue_prepped (struct io_uring*,struct io_data*) ;
 scalar_t__ queue_read (struct io_uring*,scalar_t__,scalar_t__) ;
 int queue_write (struct io_uring*,struct io_data*) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int copy_file(struct io_uring *ring, off_t insize)
{
 unsigned long reads, writes;
 struct io_uring_cqe *cqe;
 off_t write_left, offset;
 int ret;

 write_left = insize;
 writes = reads = offset = 0;

 while (insize || write_left) {
  unsigned long had_reads;
  int got_comp;




  had_reads = reads;
  while (insize) {
   off_t this_size = insize;

   if (reads + writes >= QD)
    break;
   if (this_size > BS)
    this_size = BS;
   else if (!this_size)
    break;

   if (queue_read(ring, this_size, offset))
    break;

   insize -= this_size;
   offset += this_size;
   reads++;
  }

  if (had_reads != reads) {
   ret = io_uring_submit(ring);
   if (ret < 0) {
    fprintf(stderr, "io_uring_submit: %s\n", strerror(-ret));
    break;
   }
  }




  got_comp = 0;
  while (write_left) {
   struct io_data *data;

   if (!got_comp) {
    ret = io_uring_wait_cqe(ring, &cqe);
    got_comp = 1;
   } else
    ret = io_uring_peek_cqe(ring, &cqe);
   if (ret < 0) {
    fprintf(stderr, "io_uring_peek_cqe: %s\n",
       strerror(-ret));
    return 1;
   }
   if (!cqe)
    break;

   data = io_uring_cqe_get_data(cqe);
   if (cqe->res < 0) {
    if (cqe->res == -EAGAIN) {
     queue_prepped(ring, data);
     io_uring_cqe_seen(ring, cqe);
     continue;
    }
    fprintf(stderr, "cqe failed: %s\n",
      strerror(-cqe->res));
    return 1;
   } else if ((size_t) cqe->res != data->iov.iov_len) {

    data->iov.iov_base += cqe->res;
    data->iov.iov_len -= cqe->res;
    data->offset += cqe->res;
    queue_prepped(ring, data);
    io_uring_cqe_seen(ring, cqe);
    continue;
   }





   if (data->read) {
    queue_write(ring, data);
    write_left -= data->first_len;
    reads--;
    writes++;
   } else {
    free(data);
    writes--;
   }
   io_uring_cqe_seen(ring, cqe);
  }
 }

 return 0;
}
