
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int message_age_timer; } ;
typedef int ssize_t ;


 int br_timer_value (int *) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_message_age_timer(struct net_bridge_port *p,
         char *buf)
{
 return sprintf(buf, "%ld\n", br_timer_value(&p->message_age_timer));
}
