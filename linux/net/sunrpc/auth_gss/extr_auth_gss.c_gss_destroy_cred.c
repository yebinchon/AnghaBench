
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_flags; } ;


 int RPCAUTH_CRED_UPTODATE ;
 int gss_destroy_nullcred (struct rpc_cred*) ;
 int gss_send_destroy_context (struct rpc_cred*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
gss_destroy_cred(struct rpc_cred *cred)
{

 if (test_and_clear_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0)
  gss_send_destroy_context(cred);
 gss_destroy_nullcred(cred);
}
