
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_context {int dummy; } ;


 unsigned int O_RDWR ;
 int anon_inode_getfd (char*,int *,struct fs_context*,unsigned int) ;
 int fscontext_fops ;
 int put_fs_context (struct fs_context*) ;

__attribute__((used)) static int fscontext_create_fd(struct fs_context *fc, unsigned int o_flags)
{
 int fd;

 fd = anon_inode_getfd("[fscontext]", &fscontext_fops, fc,
         O_RDWR | o_flags);
 if (fd < 0)
  put_fs_context(fc);
 return fd;
}
