
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_task_ctx {scalar_t__ token; int * onexec; int * previous; } ;


 int AA_BUG (int) ;
 int aa_put_label (int *) ;

__attribute__((used)) static inline void aa_clear_task_ctx_trans(struct aa_task_ctx *ctx)
{
 AA_BUG(!ctx);

 aa_put_label(ctx->previous);
 aa_put_label(ctx->onexec);
 ctx->previous = ((void*)0);
 ctx->onexec = ((void*)0);
 ctx->token = 0;
}
