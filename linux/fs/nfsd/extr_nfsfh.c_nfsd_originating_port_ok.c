
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cr_flavor; } ;
struct svc_rqst {int rq_flags; TYPE_1__ rq_cred; } ;


 int NFSEXP_INSECURE_PORT ;
 scalar_t__ RPC_AUTH_GSS ;
 int RQ_SECURE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool nfsd_originating_port_ok(struct svc_rqst *rqstp, int flags)
{
 if (flags & NFSEXP_INSECURE_PORT)
  return 1;

 if (rqstp->rq_cred.cr_flavor >= RPC_AUTH_GSS)
  return 1;
 return test_bit(RQ_SECURE, &rqstp->rq_flags);
}
