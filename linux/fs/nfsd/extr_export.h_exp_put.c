
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_export {int cd; int h; } ;


 int cache_put (int *,int ) ;

__attribute__((used)) static inline void exp_put(struct svc_export *exp)
{
 cache_put(&exp->h, exp->cd);
}
