
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_serv_ops {int dummy; } ;
struct svc_serv {int sv_nrthreads; unsigned int sv_max_payload; unsigned int sv_xdrsize; int sv_nrpools; int sv_name; struct svc_pool* sv_pools; int sv_lock; int sv_temptimer; int sv_permsocks; int sv_tempsocks; struct svc_serv_ops const* sv_ops; int sv_max_mesg; int sv_stats; struct svc_program* sv_program; } ;
struct svc_program {int pg_lovers; int pg_nvers; unsigned int pg_hivers; struct svc_program* pg_next; TYPE_1__** pg_vers; int pg_stats; int pg_name; } ;
struct svc_pool {unsigned int sp_id; int sp_lock; int sp_all_threads; int sp_sockets; } ;
struct TYPE_2__ {unsigned int vs_xdrsize; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_SIZE ;
 unsigned int RPCSVC_MAXPAYLOAD ;
 int __svc_init_bc (struct svc_serv*) ;
 int dprintk (char*,unsigned int,int ) ;
 struct svc_pool* kcalloc (int,int,int ) ;
 int kfree (struct svc_serv*) ;
 struct svc_serv* kzalloc (int,int ) ;
 int roundup (scalar_t__,scalar_t__) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int *,int ) ;

__attribute__((used)) static struct svc_serv *
__svc_create(struct svc_program *prog, unsigned int bufsize, int npools,
      const struct svc_serv_ops *ops)
{
 struct svc_serv *serv;
 unsigned int vers;
 unsigned int xdrsize;
 unsigned int i;

 if (!(serv = kzalloc(sizeof(*serv), GFP_KERNEL)))
  return ((void*)0);
 serv->sv_name = prog->pg_name;
 serv->sv_program = prog;
 serv->sv_nrthreads = 1;
 serv->sv_stats = prog->pg_stats;
 if (bufsize > RPCSVC_MAXPAYLOAD)
  bufsize = RPCSVC_MAXPAYLOAD;
 serv->sv_max_payload = bufsize? bufsize : 4096;
 serv->sv_max_mesg = roundup(serv->sv_max_payload + PAGE_SIZE, PAGE_SIZE);
 serv->sv_ops = ops;
 xdrsize = 0;
 while (prog) {
  prog->pg_lovers = prog->pg_nvers-1;
  for (vers=0; vers<prog->pg_nvers ; vers++)
   if (prog->pg_vers[vers]) {
    prog->pg_hivers = vers;
    if (prog->pg_lovers > vers)
     prog->pg_lovers = vers;
    if (prog->pg_vers[vers]->vs_xdrsize > xdrsize)
     xdrsize = prog->pg_vers[vers]->vs_xdrsize;
   }
  prog = prog->pg_next;
 }
 serv->sv_xdrsize = xdrsize;
 INIT_LIST_HEAD(&serv->sv_tempsocks);
 INIT_LIST_HEAD(&serv->sv_permsocks);
 timer_setup(&serv->sv_temptimer, ((void*)0), 0);
 spin_lock_init(&serv->sv_lock);

 __svc_init_bc(serv);

 serv->sv_nrpools = npools;
 serv->sv_pools =
  kcalloc(serv->sv_nrpools, sizeof(struct svc_pool),
   GFP_KERNEL);
 if (!serv->sv_pools) {
  kfree(serv);
  return ((void*)0);
 }

 for (i = 0; i < serv->sv_nrpools; i++) {
  struct svc_pool *pool = &serv->sv_pools[i];

  dprintk("svc: initialising pool %u for %s\n",
    i, serv->sv_name);

  pool->sp_id = i;
  INIT_LIST_HEAD(&pool->sp_sockets);
  INIT_LIST_HEAD(&pool->sp_all_threads);
  spin_lock_init(&pool->sp_lock);
 }

 return serv;
}
