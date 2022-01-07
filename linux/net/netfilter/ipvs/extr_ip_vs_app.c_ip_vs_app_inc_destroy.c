
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_app {struct ip_vs_app* timeout_table; } ;


 int kfree (struct ip_vs_app*) ;

__attribute__((used)) static void ip_vs_app_inc_destroy(struct ip_vs_app *inc)
{
 kfree(inc->timeout_table);
 kfree(inc);
}
