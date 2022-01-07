
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct task_security_struct {int sid; } ;


 int SOCKET__CREATE ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_cred () ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_state ;
 int socket_sockcreate_sid (struct task_security_struct const*,int ,int *) ;
 int socket_type_to_security_class (int,int,int) ;

__attribute__((used)) static int selinux_socket_create(int family, int type,
     int protocol, int kern)
{
 const struct task_security_struct *tsec = selinux_cred(current_cred());
 u32 newsid;
 u16 secclass;
 int rc;

 if (kern)
  return 0;

 secclass = socket_type_to_security_class(family, type, protocol);
 rc = socket_sockcreate_sid(tsec, secclass, &newsid);
 if (rc)
  return rc;

 return avc_has_perm(&selinux_state,
       tsec->sid, newsid, secclass, SOCKET__CREATE, ((void*)0));
}
