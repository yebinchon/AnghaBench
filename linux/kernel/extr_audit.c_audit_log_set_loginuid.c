
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct tty_struct {int dummy; } ;
struct audit_buffer {int dummy; } ;
typedef int kuid_t ;


 int AUDIT_LOGIN ;
 int GFP_KERNEL ;
 int audit_context () ;
 int audit_enabled ;
 struct tty_struct* audit_get_tty () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,int ,int ,...) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int audit_log_task_context (struct audit_buffer*) ;
 int audit_put_tty (struct tty_struct*) ;
 int current ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int task_tgid_nr (int ) ;
 int task_uid (int ) ;
 char* tty_name (struct tty_struct*) ;

__attribute__((used)) static void audit_log_set_loginuid(kuid_t koldloginuid, kuid_t kloginuid,
       unsigned int oldsessionid,
       unsigned int sessionid, int rc)
{
 struct audit_buffer *ab;
 uid_t uid, oldloginuid, loginuid;
 struct tty_struct *tty;

 if (!audit_enabled)
  return;

 ab = audit_log_start(audit_context(), GFP_KERNEL, AUDIT_LOGIN);
 if (!ab)
  return;

 uid = from_kuid(&init_user_ns, task_uid(current));
 oldloginuid = from_kuid(&init_user_ns, koldloginuid);
 loginuid = from_kuid(&init_user_ns, kloginuid),
 tty = audit_get_tty();

 audit_log_format(ab, "pid=%d uid=%u", task_tgid_nr(current), uid);
 audit_log_task_context(ab);
 audit_log_format(ab, " old-auid=%u auid=%u tty=%s old-ses=%u ses=%u res=%d",
    oldloginuid, loginuid, tty ? tty_name(tty) : "(none)",
    oldsessionid, sessionid, !rc);
 audit_put_tty(tty);
 audit_log_end(ab);
}
