
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int s_iflags; } ;


 int AIO_RING_MAGIC ;
 int ENOMEM ;
 int SB_I_NOEXEC ;
 int init_pseudo (struct fs_context*,int ) ;

__attribute__((used)) static int aio_init_fs_context(struct fs_context *fc)
{
 if (!init_pseudo(fc, AIO_RING_MAGIC))
  return -ENOMEM;
 fc->s_iflags |= SB_I_NOEXEC;
 return 0;
}
