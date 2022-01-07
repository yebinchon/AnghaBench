
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct audit_buffer {int dummy; } ;


 int audit_get_loginuid (int ) ;
 unsigned int audit_get_sessionid (int ) ;
 int audit_log_format (struct audit_buffer*,char*,int ,unsigned int) ;
 int current ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;

void audit_log_session_info(struct audit_buffer *ab)
{
 unsigned int sessionid = audit_get_sessionid(current);
 uid_t auid = from_kuid(&init_user_ns, audit_get_loginuid(current));

 audit_log_format(ab, "auid=%u ses=%u", auid, sessionid);
}
