
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct svc_rqst {scalar_t__ rq_prog; int rq_vers; TYPE_1__ rq_arg; } ;
struct svc_procedure {scalar_t__ pc_xdrressize; } ;


 scalar_t__ NFS_PROGRAM ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ XDR_QUADLEN (scalar_t__) ;

__attribute__((used)) static bool nfs_request_too_big(struct svc_rqst *rqstp,
    const struct svc_procedure *proc)
{




 if (rqstp->rq_prog != NFS_PROGRAM)
  return 0;




 if (rqstp->rq_vers >= 4)
  return 0;

 if (proc->pc_xdrressize > 0 &&
     proc->pc_xdrressize < XDR_QUADLEN(PAGE_SIZE))
  return 0;

 return rqstp->rq_arg.len > PAGE_SIZE;
}
