
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_clock_desc {scalar_t__ clk; struct file* fp; } ;
struct file {int private_data; TYPE_1__* f_op; } ;
typedef int clockid_t ;
struct TYPE_2__ {scalar_t__ open; } ;


 int EINVAL ;
 int ENODEV ;
 int clockid_to_fd (int const) ;
 struct file* fget (int ) ;
 int fput (struct file*) ;
 scalar_t__ get_posix_clock (struct file*) ;
 scalar_t__ posix_clock_open ;

__attribute__((used)) static int get_clock_desc(const clockid_t id, struct posix_clock_desc *cd)
{
 struct file *fp = fget(clockid_to_fd(id));
 int err = -EINVAL;

 if (!fp)
  return err;

 if (fp->f_op->open != posix_clock_open || !fp->private_data)
  goto out;

 cd->fp = fp;
 cd->clk = get_posix_clock(fp);

 err = cd->clk ? 0 : -ENODEV;
out:
 if (err)
  fput(fp);
 return err;
}
