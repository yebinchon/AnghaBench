
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* poll ) (struct posix_clock*,struct file*,int *) ;} ;
struct posix_clock {TYPE_1__ ops; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 struct posix_clock* get_posix_clock (struct file*) ;
 int put_posix_clock (struct posix_clock*) ;
 int stub1 (struct posix_clock*,struct file*,int *) ;

__attribute__((used)) static __poll_t posix_clock_poll(struct file *fp, poll_table *wait)
{
 struct posix_clock *clk = get_posix_clock(fp);
 __poll_t result = 0;

 if (!clk)
  return EPOLLERR;

 if (clk->ops.poll)
  result = clk->ops.poll(clk, fp, wait);

 put_posix_clock(clk);

 return result;
}
