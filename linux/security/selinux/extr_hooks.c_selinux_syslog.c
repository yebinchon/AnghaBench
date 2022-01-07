
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;





 int SYSTEM__SYSLOG_CONSOLE ;
 int SYSTEM__SYSLOG_MOD ;
 int SYSTEM__SYSLOG_READ ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int selinux_syslog(int type)
{
 switch (type) {
 case 129:
 case 128:
  return avc_has_perm(&selinux_state,
        current_sid(), SECINITSID_KERNEL,
        SECCLASS_SYSTEM, SYSTEM__SYSLOG_READ, ((void*)0));
 case 131:
 case 130:

 case 132:
  return avc_has_perm(&selinux_state,
        current_sid(), SECINITSID_KERNEL,
        SECCLASS_SYSTEM, SYSTEM__SYSLOG_CONSOLE,
        ((void*)0));
 }

 return avc_has_perm(&selinux_state,
       current_sid(), SECINITSID_KERNEL,
       SECCLASS_SYSTEM, SYSTEM__SYSLOG_MOD, ((void*)0));
}
