
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tun_security_struct {int sid; } ;


 int SECCLASS_TUN_SOCKET ;
 int TUN_SOCKET__RELABELFROM ;
 int TUN_SOCKET__RELABELTO ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int selinux_state ;

__attribute__((used)) static int selinux_tun_dev_open(void *security)
{
 struct tun_security_struct *tunsec = security;
 u32 sid = current_sid();
 int err;

 err = avc_has_perm(&selinux_state,
      sid, tunsec->sid, SECCLASS_TUN_SOCKET,
      TUN_SOCKET__RELABELFROM, ((void*)0));
 if (err)
  return err;
 err = avc_has_perm(&selinux_state,
      sid, sid, SECCLASS_TUN_SOCKET,
      TUN_SOCKET__RELABELTO, ((void*)0));
 if (err)
  return err;
 tunsec->sid = sid;

 return 0;
}
