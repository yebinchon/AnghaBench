
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {size_t sv_nrpools; struct svc_pool* sv_pools; } ;
struct svc_pool {int dummy; } ;



__attribute__((used)) static inline struct svc_pool *
choose_pool(struct svc_serv *serv, struct svc_pool *pool, unsigned int *state)
{
 if (pool != ((void*)0))
  return pool;

 return &serv->sv_pools[(*state)++ % serv->sv_nrpools];
}
