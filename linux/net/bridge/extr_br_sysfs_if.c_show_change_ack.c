
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int topology_change_ack; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_change_ack(struct net_bridge_port *p, char *buf)
{
 return sprintf(buf, "%d\n", p->topology_change_ack);
}
