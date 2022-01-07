
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_nr_rqsts; } ;


 int atomic_read (int *) ;
 unsigned int svc_rpc_per_connection_limit ;

__attribute__((used)) static bool svc_xprt_slots_in_range(struct svc_xprt *xprt)
{
 unsigned int limit = svc_rpc_per_connection_limit;
 int nrqsts = atomic_read(&xprt->xpt_nr_rqsts);

 return limit == 0 || (nrqsts >= 0 && nrqsts < limit);
}
