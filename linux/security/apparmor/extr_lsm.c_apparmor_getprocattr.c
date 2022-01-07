
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ onexec; scalar_t__ previous; } ;
struct aa_label {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 struct aa_label* aa_get_newest_label (scalar_t__) ;
 int aa_getprocattr (struct aa_label*,char**) ;
 int aa_put_label (struct aa_label*) ;
 scalar_t__ cred_label (struct cred const*) ;
 int current ;
 struct cred* get_task_cred (struct task_struct*) ;
 int put_cred (struct cred const*) ;
 scalar_t__ strcmp (char*,char*) ;
 struct aa_task_ctx* task_ctx (int ) ;

__attribute__((used)) static int apparmor_getprocattr(struct task_struct *task, char *name,
    char **value)
{
 int error = -ENOENT;

 const struct cred *cred = get_task_cred(task);
 struct aa_task_ctx *ctx = task_ctx(current);
 struct aa_label *label = ((void*)0);

 if (strcmp(name, "current") == 0)
  label = aa_get_newest_label(cred_label(cred));
 else if (strcmp(name, "prev") == 0 && ctx->previous)
  label = aa_get_newest_label(ctx->previous);
 else if (strcmp(name, "exec") == 0 && ctx->onexec)
  label = aa_get_newest_label(ctx->onexec);
 else
  error = -EINVAL;

 if (label)
  error = aa_getprocattr(label, value);

 aa_put_label(label);
 put_cred(cred);

 return error;
}
