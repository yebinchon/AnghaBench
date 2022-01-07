
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ax25_node; } ;
typedef TYPE_1__ ax25_cb ;


 int ax25_cb_put (TYPE_1__*) ;
 int ax25_list_lock ;
 int hlist_del_init (int *) ;
 int hlist_unhashed (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ax25_cb_del(ax25_cb *ax25)
{
 if (!hlist_unhashed(&ax25->ax25_node)) {
  spin_lock_bh(&ax25_list_lock);
  hlist_del_init(&ax25->ax25_node);
  spin_unlock_bh(&ax25_list_lock);
  ax25_cb_put(ax25);
 }
}
