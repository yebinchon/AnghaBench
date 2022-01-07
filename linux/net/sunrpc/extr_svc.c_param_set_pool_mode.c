
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_pool_map {scalar_t__ count; } ;
struct kernel_param {scalar_t__ arg; } ;


 int EBUSY ;
 int EINVAL ;
 int SVC_POOL_AUTO ;
 int SVC_POOL_GLOBAL ;
 int SVC_POOL_PERCPU ;
 int SVC_POOL_PERNODE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strncmp (char const*,char*,int) ;
 struct svc_pool_map svc_pool_map ;
 int svc_pool_map_mutex ;

__attribute__((used)) static int
param_set_pool_mode(const char *val, const struct kernel_param *kp)
{
 int *ip = (int *)kp->arg;
 struct svc_pool_map *m = &svc_pool_map;
 int err;

 mutex_lock(&svc_pool_map_mutex);

 err = -EBUSY;
 if (m->count)
  goto out;

 err = 0;
 if (!strncmp(val, "auto", 4))
  *ip = SVC_POOL_AUTO;
 else if (!strncmp(val, "global", 6))
  *ip = SVC_POOL_GLOBAL;
 else if (!strncmp(val, "percpu", 6))
  *ip = SVC_POOL_PERCPU;
 else if (!strncmp(val, "pernode", 7))
  *ip = SVC_POOL_PERNODE;
 else
  err = -EINVAL;

out:
 mutex_unlock(&svc_pool_map_mutex);
 return err;
}
