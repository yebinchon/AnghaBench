
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {struct netlbl_lsm_secattr* nlbl_secattr; } ;
struct TYPE_2__ {scalar_t__ secid; } ;
struct netlbl_lsm_secattr {int flags; TYPE_1__ attr; } ;


 int NETLBL_SECATTR_SECID ;

__attribute__((used)) static struct netlbl_lsm_secattr *selinux_netlbl_sock_getattr(
       const struct sock *sk,
       u32 sid)
{
 struct sk_security_struct *sksec = sk->sk_security;
 struct netlbl_lsm_secattr *secattr = sksec->nlbl_secattr;

 if (secattr == ((void*)0))
  return ((void*)0);

 if ((secattr->flags & NETLBL_SECATTR_SECID) &&
     (secattr->attr.secid == sid))
  return secattr;

 return ((void*)0);
}
