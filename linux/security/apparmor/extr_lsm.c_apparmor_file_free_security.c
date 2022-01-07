
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct aa_file_ctx {int label; } ;


 int aa_put_label (int ) ;
 struct aa_file_ctx* file_ctx (struct file*) ;
 int rcu_access_pointer (int ) ;

__attribute__((used)) static void apparmor_file_free_security(struct file *file)
{
 struct aa_file_ctx *ctx = file_ctx(file);

 if (ctx)
  aa_put_label(rcu_access_pointer(ctx->label));
}
