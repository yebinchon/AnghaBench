
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {scalar_t__ protocol; struct ip_vs_app* app; } ;
struct ip_vs_app {int (* pkt_out ) (struct ip_vs_app*,struct ip_vs_conn*,struct sk_buff*,int *,struct ip_vs_iphdr*) ;} ;


 scalar_t__ IPPROTO_TCP ;
 int app_tcp_pkt_out (struct ip_vs_conn*,struct sk_buff*,struct ip_vs_app*,struct ip_vs_iphdr*) ;
 int stub1 (struct ip_vs_app*,struct ip_vs_conn*,struct sk_buff*,int *,struct ip_vs_iphdr*) ;

int ip_vs_app_pkt_out(struct ip_vs_conn *cp, struct sk_buff *skb,
        struct ip_vs_iphdr *ipvsh)
{
 struct ip_vs_app *app;





 if ((app = cp->app) == ((void*)0))
  return 1;


 if (cp->protocol == IPPROTO_TCP)
  return app_tcp_pkt_out(cp, skb, app, ipvsh);




 if (app->pkt_out == ((void*)0))
  return 1;

 return app->pkt_out(app, cp, skb, ((void*)0), ipvsh);
}
