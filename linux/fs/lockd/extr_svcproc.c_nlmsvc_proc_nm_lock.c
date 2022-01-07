
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nlm_args* rq_argp; } ;
struct nlm_args {scalar_t__ monitor; } ;
typedef int __be32 ;


 int dprintk (char*) ;
 int nlmsvc_proc_lock (struct svc_rqst*) ;

__attribute__((used)) static __be32
nlmsvc_proc_nm_lock(struct svc_rqst *rqstp)
{
 struct nlm_args *argp = rqstp->rq_argp;

 dprintk("lockd: NM_LOCK       called\n");

 argp->monitor = 0;
 return nlmsvc_proc_lock(rqstp);
}
