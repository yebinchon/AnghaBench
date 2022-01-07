
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_task_ctx {int onexec; int previous; int nnp; } ;


 int aa_put_label (int ) ;

__attribute__((used)) static inline void aa_free_task_ctx(struct aa_task_ctx *ctx)
{
 if (ctx) {
  aa_put_label(ctx->nnp);
  aa_put_label(ctx->previous);
  aa_put_label(ctx->onexec);
 }
}
