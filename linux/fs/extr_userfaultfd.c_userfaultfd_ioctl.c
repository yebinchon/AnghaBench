
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userfaultfd_ctx {scalar_t__ state; } ;
struct file {struct userfaultfd_ctx* private_data; } ;


 long EINVAL ;






 scalar_t__ UFFD_STATE_WAIT_API ;
 int userfaultfd_api (struct userfaultfd_ctx*,unsigned long) ;
 int userfaultfd_copy (struct userfaultfd_ctx*,unsigned long) ;
 int userfaultfd_register (struct userfaultfd_ctx*,unsigned long) ;
 int userfaultfd_unregister (struct userfaultfd_ctx*,unsigned long) ;
 int userfaultfd_wake (struct userfaultfd_ctx*,unsigned long) ;
 int userfaultfd_zeropage (struct userfaultfd_ctx*,unsigned long) ;

__attribute__((used)) static long userfaultfd_ioctl(struct file *file, unsigned cmd,
         unsigned long arg)
{
 int ret = -EINVAL;
 struct userfaultfd_ctx *ctx = file->private_data;

 if (cmd != 133 && ctx->state == UFFD_STATE_WAIT_API)
  return -EINVAL;

 switch(cmd) {
 case 133:
  ret = userfaultfd_api(ctx, arg);
  break;
 case 131:
  ret = userfaultfd_register(ctx, arg);
  break;
 case 130:
  ret = userfaultfd_unregister(ctx, arg);
  break;
 case 129:
  ret = userfaultfd_wake(ctx, arg);
  break;
 case 132:
  ret = userfaultfd_copy(ctx, arg);
  break;
 case 128:
  ret = userfaultfd_zeropage(ctx, arg);
  break;
 }
 return ret;
}
