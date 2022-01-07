
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_security_struct {int sid; } ;


 int PACKET__RELABELTO ;
 int SECCLASS_PACKET ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_cred () ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_state ;

__attribute__((used)) static int selinux_secmark_relabel_packet(u32 sid)
{
 const struct task_security_struct *__tsec;
 u32 tsid;

 __tsec = selinux_cred(current_cred());
 tsid = __tsec->sid;

 return avc_has_perm(&selinux_state,
       tsid, sid, SECCLASS_PACKET, PACKET__RELABELTO,
       ((void*)0));
}
