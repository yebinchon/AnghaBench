
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; void* sid; void* peer_sid; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int SECCLASS_SOCKET ;
 void* SECINITSID_UNLABELED ;
 struct sk_security_struct* kzalloc (int,int ) ;
 int selinux_netlbl_sk_security_reset (struct sk_security_struct*) ;

__attribute__((used)) static int selinux_sk_alloc_security(struct sock *sk, int family, gfp_t priority)
{
 struct sk_security_struct *sksec;

 sksec = kzalloc(sizeof(*sksec), priority);
 if (!sksec)
  return -ENOMEM;

 sksec->peer_sid = SECINITSID_UNLABELED;
 sksec->sid = SECINITSID_UNLABELED;
 sksec->sclass = SECCLASS_SOCKET;
 selinux_netlbl_sk_security_reset(sksec);
 sk->sk_security = sksec;

 return 0;
}
