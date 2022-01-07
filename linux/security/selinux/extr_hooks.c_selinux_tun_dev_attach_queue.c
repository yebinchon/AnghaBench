
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_security_struct {int sid; } ;


 int SECCLASS_TUN_SOCKET ;
 int TUN_SOCKET__ATTACH_QUEUE ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int selinux_tun_dev_attach_queue(void *security)
{
 struct tun_security_struct *tunsec = security;

 return avc_has_perm(&selinux_state,
       current_sid(), tunsec->sid, SECCLASS_TUN_SOCKET,
       TUN_SOCKET__ATTACH_QUEUE, ((void*)0));
}
