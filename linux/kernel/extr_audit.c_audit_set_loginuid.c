
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kuid_t ;
struct TYPE_4__ {unsigned int sessionid; int loginuid; } ;


 unsigned int AUDIT_SID_UNSET ;
 scalar_t__ atomic_inc_return (int *) ;
 int audit_get_loginuid (TYPE_1__*) ;
 unsigned int audit_get_sessionid (TYPE_1__*) ;
 int audit_log_set_loginuid (int ,int ,unsigned int,unsigned int,int) ;
 int audit_set_loginuid_perm (int ) ;
 TYPE_1__* current ;
 int session_id ;
 scalar_t__ uid_valid (int ) ;
 scalar_t__ unlikely (int) ;

int audit_set_loginuid(kuid_t loginuid)
{
 unsigned int oldsessionid, sessionid = AUDIT_SID_UNSET;
 kuid_t oldloginuid;
 int rc;

 oldloginuid = audit_get_loginuid(current);
 oldsessionid = audit_get_sessionid(current);

 rc = audit_set_loginuid_perm(loginuid);
 if (rc)
  goto out;


 if (uid_valid(loginuid)) {
  sessionid = (unsigned int)atomic_inc_return(&session_id);
  if (unlikely(sessionid == AUDIT_SID_UNSET))
   sessionid = (unsigned int)atomic_inc_return(&session_id);
 }

 current->sessionid = sessionid;
 current->loginuid = loginuid;
out:
 audit_log_set_loginuid(oldloginuid, loginuid, oldsessionid, sessionid, rc);
 return rc;
}
