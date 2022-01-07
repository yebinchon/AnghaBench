
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int dprintk (char*) ;
 int rpc_success ;

__attribute__((used)) static __be32
nlm4svc_proc_null(struct svc_rqst *rqstp)
{
 dprintk("lockd: NULL          called\n");
 return rpc_success;
}
