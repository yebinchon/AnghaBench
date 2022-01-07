
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ token; int previous; } ;


 int AA_BUG (int) ;
 int EACCES ;
 int ENOMEM ;
 int aa_clear_task_ctx_trans (struct aa_task_ctx*) ;
 int aa_get_newest_label (int ) ;
 int aa_put_label (int ) ;
 int commit_creds (struct cred*) ;
 int cred_label (struct cred*) ;
 int current ;
 struct cred* prepare_creds () ;
 int set_cred_label (struct cred*,int ) ;
 struct aa_task_ctx* task_ctx (int ) ;

int aa_restore_previous_label(u64 token)
{
 struct aa_task_ctx *ctx = task_ctx(current);
 struct cred *new;

 if (ctx->token != token)
  return -EACCES;

 if (!ctx->previous)
  return 0;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 aa_put_label(cred_label(new));
 set_cred_label(new, aa_get_newest_label(ctx->previous));
 AA_BUG(!cred_label(new));

 aa_clear_task_ctx_trans(ctx);

 commit_creds(new);

 return 0;
}
