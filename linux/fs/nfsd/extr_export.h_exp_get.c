
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_export {int h; } ;


 int cache_get (int *) ;

__attribute__((used)) static inline struct svc_export *exp_get(struct svc_export *exp)
{
 cache_get(&exp->h);
 return exp;
}
