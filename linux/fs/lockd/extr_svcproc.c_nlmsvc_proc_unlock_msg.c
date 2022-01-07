
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int NLMPROC_UNLOCK_RES ;
 int __nlmsvc_proc_unlock ;
 int dprintk (char*) ;
 int nlmsvc_callback (struct svc_rqst*,int ,int ) ;

__attribute__((used)) static __be32
nlmsvc_proc_unlock_msg(struct svc_rqst *rqstp)
{
 dprintk("lockd: UNLOCK_MSG    called\n");
 return nlmsvc_callback(rqstp, NLMPROC_UNLOCK_RES, __nlmsvc_proc_unlock);
}
