
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clusterip_config {int refcount; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void
clusterip_config_get(struct clusterip_config *c)
{
 refcount_inc(&c->refcount);
}
