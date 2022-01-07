
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; } ;
struct ip_vs_app {int dummy; } ;


 int IP_VS_CONN_F_NFCT ;

__attribute__((used)) static int
ip_vs_ftp_init_conn(struct ip_vs_app *app, struct ip_vs_conn *cp)
{

 cp->flags |= IP_VS_CONN_F_NFCT;
 return 0;
}
