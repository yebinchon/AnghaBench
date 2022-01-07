
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef scalar_t__ u16 ;
struct audit_context {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef int pid_t ;


 scalar_t__ AUDIT_USER_AVC ;
 int GFP_KERNEL ;
 int audit_enabled ;
 int audit_log_format (struct audit_buffer*,char*,int ,int ) ;
 int audit_log_session_info (struct audit_buffer*) ;
 struct audit_buffer* audit_log_start (struct audit_context*,int ,scalar_t__) ;
 int audit_log_task_context (struct audit_buffer*) ;
 int current ;
 int current_uid () ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int task_tgid_nr (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void audit_log_common_recv_msg(struct audit_context *context,
     struct audit_buffer **ab, u16 msg_type)
{
 uid_t uid = from_kuid(&init_user_ns, current_uid());
 pid_t pid = task_tgid_nr(current);

 if (!audit_enabled && msg_type != AUDIT_USER_AVC) {
  *ab = ((void*)0);
  return;
 }

 *ab = audit_log_start(context, GFP_KERNEL, msg_type);
 if (unlikely(!*ab))
  return;
 audit_log_format(*ab, "pid=%d uid=%u ", pid, uid);
 audit_log_session_info(*ab);
 audit_log_task_context(*ab);
}
