
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dn {int dummy; } ;
struct sock {int sk_allocation; } ;
struct dn_scp {int state; } ;







 struct dn_scp* DN_SK (struct sock*) ;
 int EINVAL ;
 int __dn_connect (struct sock*,struct sockaddr_dn*,int,long*,int) ;
 int dn_confirm_accept (struct sock*,long*,int ) ;
 int dn_wait_run (struct sock*,long*) ;

__attribute__((used)) static inline int dn_check_state(struct sock *sk, struct sockaddr_dn *addr, int addrlen, long *timeo, int flags)
{
 struct dn_scp *scp = DN_SK(sk);

 switch (scp->state) {
 case 128:
  return 0;
 case 130:
  return dn_confirm_accept(sk, timeo, sk->sk_allocation);
 case 131:
 case 132:
  return dn_wait_run(sk, timeo);
 case 129:
  return __dn_connect(sk, addr, addrlen, timeo, flags);
 }

 return -EINVAL;
}
