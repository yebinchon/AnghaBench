
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct signalfd_ctx {void* sigmask; } ;
struct fd {TYPE_1__* file; } ;
typedef void* sigset_t ;
struct TYPE_6__ {TYPE_2__* sighand; } ;
struct TYPE_5__ {int signalfd_wqh; int siglock; } ;
struct TYPE_4__ {int * f_op; struct signalfd_ctx* private_data; } ;


 int BUILD_BUG_ON (int) ;
 int EBADF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SFD_CLOEXEC ;
 int SFD_NONBLOCK ;
 int SIGKILL ;
 int SIGSTOP ;
 int anon_inode_getfd (char*,int *,struct signalfd_ctx*,int) ;
 TYPE_3__* current ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int kfree (struct signalfd_ctx*) ;
 struct signalfd_ctx* kmalloc (int,int ) ;
 int sigdelsetmask (void**,int) ;
 int sigmask (int ) ;
 int signalfd_fops ;
 int signotset (void**) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int do_signalfd4(int ufd, sigset_t *mask, int flags)
{
 struct signalfd_ctx *ctx;


 BUILD_BUG_ON(SFD_CLOEXEC != O_CLOEXEC);
 BUILD_BUG_ON(SFD_NONBLOCK != O_NONBLOCK);

 if (flags & ~(SFD_CLOEXEC | SFD_NONBLOCK))
  return -EINVAL;

 sigdelsetmask(mask, sigmask(SIGKILL) | sigmask(SIGSTOP));
 signotset(mask);

 if (ufd == -1) {
  ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
  if (!ctx)
   return -ENOMEM;

  ctx->sigmask = *mask;





  ufd = anon_inode_getfd("[signalfd]", &signalfd_fops, ctx,
           O_RDWR | (flags & (O_CLOEXEC | O_NONBLOCK)));
  if (ufd < 0)
   kfree(ctx);
 } else {
  struct fd f = fdget(ufd);
  if (!f.file)
   return -EBADF;
  ctx = f.file->private_data;
  if (f.file->f_op != &signalfd_fops) {
   fdput(f);
   return -EINVAL;
  }
  spin_lock_irq(&current->sighand->siglock);
  ctx->sigmask = *mask;
  spin_unlock_irq(&current->sighand->siglock);

  wake_up(&current->sighand->signalfd_wqh);
  fdput(f);
 }

 return ufd;
}
