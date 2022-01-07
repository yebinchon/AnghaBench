
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct eventfd_ctx* private_data; int * f_op; } ;
struct eventfd_ctx {int kref; } ;


 int EINVAL ;
 struct eventfd_ctx* ERR_PTR (int ) ;
 int eventfd_fops ;
 int kref_get (int *) ;

struct eventfd_ctx *eventfd_ctx_fileget(struct file *file)
{
 struct eventfd_ctx *ctx;

 if (file->f_op != &eventfd_fops)
  return ERR_PTR(-EINVAL);

 ctx = file->private_data;
 kref_get(&ctx->kref);
 return ctx;
}
