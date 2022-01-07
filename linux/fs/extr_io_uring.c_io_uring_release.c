
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct io_ring_ctx* private_data; } ;


 int io_ring_ctx_wait_and_kill (struct io_ring_ctx*) ;

__attribute__((used)) static int io_uring_release(struct inode *inode, struct file *file)
{
 struct io_ring_ctx *ctx = file->private_data;

 file->private_data = ((void*)0);
 io_ring_ctx_wait_and_kill(ctx);
 return 0;
}
