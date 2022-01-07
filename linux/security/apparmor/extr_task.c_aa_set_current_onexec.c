
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_task_ctx {int token; struct aa_label* onexec; } ;
struct aa_label {int dummy; } ;


 int aa_get_label (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 int current ;
 struct aa_task_ctx* task_ctx (int ) ;

int aa_set_current_onexec(struct aa_label *label, bool stack)
{
 struct aa_task_ctx *ctx = task_ctx(current);

 aa_get_label(label);
 aa_put_label(ctx->onexec);
 ctx->onexec = label;
 ctx->token = stack;

 return 0;
}
