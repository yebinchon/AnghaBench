
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct task_security_struct {scalar_t__ sockcreate_sid; int sid; } ;


 scalar_t__ SECSID_NULL ;
 int security_transition_sid (int *,int ,int ,int ,int *,scalar_t__*) ;
 int selinux_state ;

__attribute__((used)) static int socket_sockcreate_sid(const struct task_security_struct *tsec,
     u16 secclass, u32 *socksid)
{
 if (tsec->sockcreate_sid > SECSID_NULL) {
  *socksid = tsec->sockcreate_sid;
  return 0;
 }

 return security_transition_sid(&selinux_state, tsec->sid, tsec->sid,
           secclass, ((void*)0), socksid);
}
