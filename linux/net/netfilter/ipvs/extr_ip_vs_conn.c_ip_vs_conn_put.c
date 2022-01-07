
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn {int flags; int timer; int refcnt; } ;


 int IP_VS_CONN_F_ONE_PACKET ;
 int __ip_vs_conn_put_timer (struct ip_vs_conn*) ;
 int ip_vs_conn_expire (int *) ;
 int refcount_read (int *) ;
 int timer_pending (int *) ;

void ip_vs_conn_put(struct ip_vs_conn *cp)
{
 if ((cp->flags & IP_VS_CONN_F_ONE_PACKET) &&
     (refcount_read(&cp->refcnt) == 1) &&
     !timer_pending(&cp->timer))

  ip_vs_conn_expire(&cp->timer);
 else
  __ip_vs_conn_put_timer(cp);
}
