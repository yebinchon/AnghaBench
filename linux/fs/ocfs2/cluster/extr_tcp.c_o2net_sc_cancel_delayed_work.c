
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int dummy; } ;
struct delayed_work {int dummy; } ;


 scalar_t__ cancel_delayed_work (struct delayed_work*) ;
 int sc_put (struct o2net_sock_container*) ;

__attribute__((used)) static void o2net_sc_cancel_delayed_work(struct o2net_sock_container *sc,
      struct delayed_work *work)
{
 if (cancel_delayed_work(work))
  sc_put(sc);
}
