
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dir_context {int dummy; } ;


 int proc_fd_instantiate ;
 int proc_readfd_common (struct file*,struct dir_context*,int ) ;

__attribute__((used)) static int proc_readfd(struct file *file, struct dir_context *ctx)
{
 return proc_readfd_common(file, ctx, proc_fd_instantiate);
}
