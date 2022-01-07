
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int sc_idle_timeout; int sc_keepalive_work; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int o2net_idle_timeout () ;
 int o2net_keepalive_delay () ;
 int o2net_sc_cancel_delayed_work (struct o2net_sock_container*,int *) ;
 int o2net_sc_queue_delayed_work (struct o2net_sock_container*,int *,scalar_t__) ;
 int o2net_set_sock_timer (struct o2net_sock_container*) ;

__attribute__((used)) static void o2net_sc_reset_idle_timer(struct o2net_sock_container *sc)
{
 o2net_sc_cancel_delayed_work(sc, &sc->sc_keepalive_work);
 o2net_sc_queue_delayed_work(sc, &sc->sc_keepalive_work,
        msecs_to_jiffies(o2net_keepalive_delay()));
 o2net_set_sock_timer(sc);
 mod_timer(&sc->sc_idle_timeout,
        jiffies + msecs_to_jiffies(o2net_idle_timeout()));
}
