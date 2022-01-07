
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_smack {int * smk_packet; struct smack_known* smk_out; struct smack_known* smk_in; } ;
struct sock {struct socket_smack* sk_security; } ;
struct smack_known {int dummy; } ;
typedef int gfp_t ;
struct TYPE_2__ {int flags; } ;


 int ENOMEM ;
 int PF_KTHREAD ;
 TYPE_1__* current ;
 struct socket_smack* kzalloc (int,int ) ;
 struct smack_known smack_known_web ;
 struct smack_known* smk_of_current () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int smack_sk_alloc_security(struct sock *sk, int family, gfp_t gfp_flags)
{
 struct smack_known *skp = smk_of_current();
 struct socket_smack *ssp;

 ssp = kzalloc(sizeof(struct socket_smack), gfp_flags);
 if (ssp == ((void*)0))
  return -ENOMEM;




 if (unlikely(current->flags & PF_KTHREAD)) {
  ssp->smk_in = &smack_known_web;
  ssp->smk_out = &smack_known_web;
 } else {
  ssp->smk_in = skp;
  ssp->smk_out = skp;
 }
 ssp->smk_packet = ((void*)0);

 sk->sk_security = ssp;

 return 0;
}
