
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {scalar_t__ rq_prog; int rq_vers; } ;


 scalar_t__ NFS_PROGRAM ;

__attribute__((used)) static inline int nfsd_v4client(struct svc_rqst *rq)
{
 return rq->rq_prog == NFS_PROGRAM && rq->rq_vers == 4;
}
