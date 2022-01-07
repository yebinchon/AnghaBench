
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ token; int * onexec; int * previous; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int EACCES ;
 int ENOMEM ;
 int aa_get_newest_label (struct aa_label*) ;
 int aa_put_label (int *) ;
 int abort_creds (struct cred*) ;
 int commit_creds (struct cred*) ;
 int * cred_label (struct cred*) ;
 int current ;
 struct cred* prepare_creds () ;
 int set_cred_label (struct cred*,int ) ;
 struct aa_task_ctx* task_ctx (int ) ;

int aa_set_current_hat(struct aa_label *label, u64 token)
{
 struct aa_task_ctx *ctx = task_ctx(current);
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;
 AA_BUG(!label);

 if (!ctx->previous) {

  ctx->previous = cred_label(new);
  ctx->token = token;
 } else if (ctx->token == token) {
  aa_put_label(cred_label(new));
 } else {

  abort_creds(new);
  return -EACCES;
 }

 set_cred_label(new, aa_get_newest_label(label));

 aa_put_label(ctx->onexec);
 ctx->onexec = ((void*)0);

 commit_creds(new);
 return 0;
}
