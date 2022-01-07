
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int (* app_conn_bind ) (struct ip_vs_conn*) ;} ;
struct ip_vs_conn {int dummy; } ;


 int stub1 (struct ip_vs_conn*) ;

int ip_vs_bind_app(struct ip_vs_conn *cp,
     struct ip_vs_protocol *pp)
{
 return pp->app_conn_bind(cp);
}
