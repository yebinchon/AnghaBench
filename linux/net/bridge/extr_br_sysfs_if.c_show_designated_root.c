
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int designated_root; } ;
typedef int ssize_t ;


 int br_show_bridge_id (char*,int *) ;

__attribute__((used)) static ssize_t show_designated_root(struct net_bridge_port *p, char *buf)
{
 return br_show_bridge_id(buf, &p->designated_root);
}
