
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {unsigned int count; int flags; int id; int wqh; int kref; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ EFD_CLOEXEC ;
 int EFD_FLAGS_SET ;
 scalar_t__ EFD_NONBLOCK ;
 int EFD_SHARED_FCNTL_FLAGS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ O_CLOEXEC ;
 scalar_t__ O_NONBLOCK ;
 int O_RDWR ;
 int anon_inode_getfd (char*,int *,struct eventfd_ctx*,int) ;
 int eventfd_fops ;
 int eventfd_free_ctx (struct eventfd_ctx*) ;
 int eventfd_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 struct eventfd_ctx* kmalloc (int,int ) ;
 int kref_init (int *) ;

__attribute__((used)) static int do_eventfd(unsigned int count, int flags)
{
 struct eventfd_ctx *ctx;
 int fd;


 BUILD_BUG_ON(EFD_CLOEXEC != O_CLOEXEC);
 BUILD_BUG_ON(EFD_NONBLOCK != O_NONBLOCK);

 if (flags & ~EFD_FLAGS_SET)
  return -EINVAL;

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 kref_init(&ctx->kref);
 init_waitqueue_head(&ctx->wqh);
 ctx->count = count;
 ctx->flags = flags;
 ctx->id = ida_simple_get(&eventfd_ida, 0, 0, GFP_KERNEL);

 fd = anon_inode_getfd("[eventfd]", &eventfd_fops, ctx,
         O_RDWR | (flags & EFD_SHARED_FCNTL_FLAGS));
 if (fd < 0)
  eventfd_free_ctx(ctx);

 return fd;
}
