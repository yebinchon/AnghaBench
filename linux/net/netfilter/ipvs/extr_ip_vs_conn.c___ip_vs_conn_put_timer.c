
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; unsigned long timeout; int timer; } ;


 int IP_VS_CONN_F_ONE_PACKET ;
 int __ip_vs_conn_put (struct ip_vs_conn*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void __ip_vs_conn_put_timer(struct ip_vs_conn *cp)
{
 unsigned long t = (cp->flags & IP_VS_CONN_F_ONE_PACKET) ?
  0 : cp->timeout;
 mod_timer(&cp->timer, jiffies+t);

 __ip_vs_conn_put(cp);
}
