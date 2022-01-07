
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct file {struct eventfd_ctx* private_data; } ;
struct eventfd_ctx {int count; int wqh; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int EPOLLIN ;
 int EPOLLOUT ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ ULLONG_MAX ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t eventfd_poll(struct file *file, poll_table *wait)
{
 struct eventfd_ctx *ctx = file->private_data;
 __poll_t events = 0;
 u64 count;

 poll_wait(file, &ctx->wqh, wait);
 count = READ_ONCE(ctx->count);

 if (count > 0)
  events |= EPOLLIN;
 if (count == ULLONG_MAX)
  events |= EPOLLERR;
 if (ULLONG_MAX - 1 > count)
  events |= EPOLLOUT;

 return events;
}
