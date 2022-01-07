
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {unsigned int sv_nrpools; struct svc_pool* sv_pools; } ;
struct svc_pool_map {int mode; unsigned int* to_pool; } ;
struct svc_pool {int dummy; } ;




 size_t cpu_to_node (int) ;
 struct svc_pool_map svc_pool_map ;
 scalar_t__ svc_serv_is_pooled (struct svc_serv*) ;

struct svc_pool *
svc_pool_for_cpu(struct svc_serv *serv, int cpu)
{
 struct svc_pool_map *m = &svc_pool_map;
 unsigned int pidx = 0;






 if (svc_serv_is_pooled(serv)) {
  switch (m->mode) {
  case 129:
   pidx = m->to_pool[cpu];
   break;
  case 128:
   pidx = m->to_pool[cpu_to_node(cpu)];
   break;
  }
 }
 return &serv->sv_pools[pidx % serv->sv_nrpools];
}
