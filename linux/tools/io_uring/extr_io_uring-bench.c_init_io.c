
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct submitter {int nr_files; size_t cur_file; TYPE_1__* iovecs; int rand; struct file* files; struct io_uring_sqe* sqes; } ;
struct io_uring_sqe {unsigned long addr; long len; unsigned int buf_index; unsigned long off; unsigned long user_data; scalar_t__ ioprio; int opcode; int fd; scalar_t__ flags; } ;
struct file {scalar_t__ pending_ios; int max_blocks; int real_fd; int fixed_fd; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 long BS ;
 int IORING_OP_NOP ;
 int IORING_OP_READV ;
 int IORING_OP_READ_FIXED ;
 scalar_t__ IOSQE_FIXED_FILE ;
 scalar_t__ do_nop ;
 scalar_t__ file_depth (struct submitter*) ;
 scalar_t__ fixedbufs ;
 int lrand48_r (int *,long*) ;
 scalar_t__ register_files ;

__attribute__((used)) static void init_io(struct submitter *s, unsigned index)
{
 struct io_uring_sqe *sqe = &s->sqes[index];
 unsigned long offset;
 struct file *f;
 long r;

 if (do_nop) {
  sqe->opcode = IORING_OP_NOP;
  return;
 }

 if (s->nr_files == 1) {
  f = &s->files[0];
 } else {
  f = &s->files[s->cur_file];
  if (f->pending_ios >= file_depth(s)) {
   s->cur_file++;
   if (s->cur_file == s->nr_files)
    s->cur_file = 0;
   f = &s->files[s->cur_file];
  }
 }
 f->pending_ios++;

 lrand48_r(&s->rand, &r);
 offset = (r % (f->max_blocks - 1)) * BS;

 if (register_files) {
  sqe->flags = IOSQE_FIXED_FILE;
  sqe->fd = f->fixed_fd;
 } else {
  sqe->flags = 0;
  sqe->fd = f->real_fd;
 }
 if (fixedbufs) {
  sqe->opcode = IORING_OP_READ_FIXED;
  sqe->addr = (unsigned long) s->iovecs[index].iov_base;
  sqe->len = BS;
  sqe->buf_index = index;
 } else {
  sqe->opcode = IORING_OP_READV;
  sqe->addr = (unsigned long) &s->iovecs[index];
  sqe->len = 1;
  sqe->buf_index = 0;
 }
 sqe->ioprio = 0;
 sqe->off = offset;
 sqe->user_data = (unsigned long) f;
}
