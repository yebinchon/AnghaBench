
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_security_struct {int sid; } ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; int sid; } ;


 int SECCLASS_TUN_SOCKET ;

__attribute__((used)) static int selinux_tun_dev_attach(struct sock *sk, void *security)
{
 struct tun_security_struct *tunsec = security;
 struct sk_security_struct *sksec = sk->sk_security;
 sksec->sid = tunsec->sid;
 sksec->sclass = SECCLASS_TUN_SOCKET;

 return 0;
}
