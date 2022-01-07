
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int cq_fasync; } ;
struct file {struct io_ring_ctx* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int io_uring_fasync(int fd, struct file *file, int on)
{
 struct io_ring_ctx *ctx = file->private_data;

 return fasync_helper(fd, file, on, &ctx->cq_fasync);
}
