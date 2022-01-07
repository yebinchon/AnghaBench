
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct o2net_sock_container {int dummy; } ;


 int o2net_wq ;
 int queue_work (int ,struct work_struct*) ;
 int sc_get (struct o2net_sock_container*) ;
 int sc_put (struct o2net_sock_container*) ;

__attribute__((used)) static void o2net_sc_queue_work(struct o2net_sock_container *sc,
    struct work_struct *work)
{
 sc_get(sc);
 if (!queue_work(o2net_wq, work))
  sc_put(sc);
}
