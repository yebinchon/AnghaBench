
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_4__ {int uid; } ;
struct TYPE_3__ {unsigned char const* s_id; } ;


 int GFP_KERNEL ;
 int TASK_COMM_LEN ;
 int audit_context () ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct audit_buffer* audit_log_start (int ,int ,int) ;
 int audit_log_task_context (struct audit_buffer*) ;
 int audit_log_untrustedstring (struct audit_buffer*,unsigned char const*) ;
 int current ;
 TYPE_2__* current_cred () ;
 int from_kuid (int *,int ) ;
 unsigned char const* get_task_comm (char*,int ) ;
 int init_user_ns ;
 int integrity_audit_info ;
 int task_pid_nr (int ) ;

void integrity_audit_msg(int audit_msgno, struct inode *inode,
    const unsigned char *fname, const char *op,
    const char *cause, int result, int audit_info)
{
 struct audit_buffer *ab;
 char name[TASK_COMM_LEN];

 if (!integrity_audit_info && audit_info == 1)
  return;

 ab = audit_log_start(audit_context(), GFP_KERNEL, audit_msgno);
 audit_log_format(ab, "pid=%d uid=%u auid=%u ses=%u",
    task_pid_nr(current),
    from_kuid(&init_user_ns, current_cred()->uid),
    from_kuid(&init_user_ns, audit_get_loginuid(current)),
    audit_get_sessionid(current));
 audit_log_task_context(ab);
 audit_log_format(ab, " op=%s cause=%s comm=", op, cause);
 audit_log_untrustedstring(ab, get_task_comm(name, current));
 if (fname) {
  audit_log_format(ab, " name=");
  audit_log_untrustedstring(ab, fname);
 }
 if (inode) {
  audit_log_format(ab, " dev=");
  audit_log_untrustedstring(ab, inode->i_sb->s_id);
  audit_log_format(ab, " ino=%lu", inode->i_ino);
 }
 audit_log_format(ab, " res=%d", !result);
 audit_log_end(ab);
}
