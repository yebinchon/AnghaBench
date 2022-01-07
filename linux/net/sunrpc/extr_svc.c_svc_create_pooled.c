
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv_ops {int dummy; } ;
struct svc_serv {int dummy; } ;
struct svc_program {int dummy; } ;


 struct svc_serv* __svc_create (struct svc_program*,unsigned int,unsigned int,struct svc_serv_ops const*) ;
 unsigned int svc_pool_map_get () ;
 int svc_pool_map_put () ;

struct svc_serv *
svc_create_pooled(struct svc_program *prog, unsigned int bufsize,
    const struct svc_serv_ops *ops)
{
 struct svc_serv *serv;
 unsigned int npools = svc_pool_map_get();

 serv = __svc_create(prog, bufsize, npools, ops);
 if (!serv)
  goto out_err;
 return serv;
out_err:
 svc_pool_map_put();
 return ((void*)0);
}
