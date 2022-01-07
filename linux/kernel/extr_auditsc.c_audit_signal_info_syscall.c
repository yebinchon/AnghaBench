
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int comm; } ;
struct audit_context {void* aux_pids; int target_comm; int target_sid; void* target_sessionid; void* target_uid; void* target_auid; void* target_pid; } ;
struct TYPE_2__ {void* next; int type; } ;
struct audit_aux_data_pids {size_t pid_count; int * target_comm; int * target_sid; void** target_sessionid; void** target_uid; void** target_auid; void** target_pid; TYPE_1__ d; } ;
typedef void* kuid_t ;


 size_t AUDIT_AUX_PIDS ;
 int AUDIT_OBJ_PID ;
 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int TASK_COMM_LEN ;
 struct audit_context* audit_context () ;
 scalar_t__ audit_dummy_context () ;
 void* audit_get_loginuid (struct task_struct*) ;
 void* audit_get_sessionid (struct task_struct*) ;
 int audit_signals ;
 struct audit_aux_data_pids* kzalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int security_task_getsecid (struct task_struct*,int *) ;
 void* task_tgid_nr (struct task_struct*) ;
 void* task_uid (struct task_struct*) ;

int audit_signal_info_syscall(struct task_struct *t)
{
 struct audit_aux_data_pids *axp;
 struct audit_context *ctx = audit_context();
 kuid_t t_uid = task_uid(t);

 if (!audit_signals || audit_dummy_context())
  return 0;



 if (!ctx->target_pid) {
  ctx->target_pid = task_tgid_nr(t);
  ctx->target_auid = audit_get_loginuid(t);
  ctx->target_uid = t_uid;
  ctx->target_sessionid = audit_get_sessionid(t);
  security_task_getsecid(t, &ctx->target_sid);
  memcpy(ctx->target_comm, t->comm, TASK_COMM_LEN);
  return 0;
 }

 axp = (void *)ctx->aux_pids;
 if (!axp || axp->pid_count == AUDIT_AUX_PIDS) {
  axp = kzalloc(sizeof(*axp), GFP_ATOMIC);
  if (!axp)
   return -ENOMEM;

  axp->d.type = AUDIT_OBJ_PID;
  axp->d.next = ctx->aux_pids;
  ctx->aux_pids = (void *)axp;
 }
 BUG_ON(axp->pid_count >= AUDIT_AUX_PIDS);

 axp->target_pid[axp->pid_count] = task_tgid_nr(t);
 axp->target_auid[axp->pid_count] = audit_get_loginuid(t);
 axp->target_uid[axp->pid_count] = t_uid;
 axp->target_sessionid[axp->pid_count] = audit_get_sessionid(t);
 security_task_getsecid(t, &axp->target_sid[axp->pid_count]);
 memcpy(axp->target_comm[axp->pid_count], t->comm, TASK_COMM_LEN);
 axp->pid_count++;

 return 0;
}
