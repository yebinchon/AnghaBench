
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {int usecnt; int app; } ;


 int atomic_inc (int *) ;
 int ip_vs_app_get (int ) ;

int ip_vs_app_inc_get(struct ip_vs_app *inc)
{
 int result;

 result = ip_vs_app_get(inc->app);
 if (result)
  atomic_inc(&inc->usecnt);
 return result;
}
