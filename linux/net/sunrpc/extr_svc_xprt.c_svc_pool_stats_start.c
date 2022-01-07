
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {unsigned int sv_nrpools; void* sv_pools; } ;
struct seq_file {struct svc_serv* private; } ;
typedef scalar_t__ loff_t ;


 void* SEQ_START_TOKEN ;
 int dprintk (char*,unsigned int) ;

__attribute__((used)) static void *svc_pool_stats_start(struct seq_file *m, loff_t *pos)
{
 unsigned int pidx = (unsigned int)*pos;
 struct svc_serv *serv = m->private;

 dprintk("svc_pool_stats_start, *pidx=%u\n", pidx);

 if (!pidx)
  return SEQ_START_TOKEN;
 return (pidx > serv->sv_nrpools ? ((void*)0) : &serv->sv_pools[pidx-1]);
}
