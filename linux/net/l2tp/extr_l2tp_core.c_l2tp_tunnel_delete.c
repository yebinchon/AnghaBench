
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_tunnel {int del_work; int dead; } ;


 int l2tp_tunnel_inc_refcount (struct l2tp_tunnel*) ;
 int l2tp_wq ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;

void l2tp_tunnel_delete(struct l2tp_tunnel *tunnel)
{
 if (!test_and_set_bit(0, &tunnel->dead)) {
  l2tp_tunnel_inc_refcount(tunnel);
  queue_work(l2tp_wq, &tunnel->del_work);
 }
}
