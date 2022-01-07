
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_cb {int list; int name; } ;


 int BT_DBG (char*,struct hci_cb*,int ) ;
 int hci_cb_list_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int hci_unregister_cb(struct hci_cb *cb)
{
 BT_DBG("%p name %s", cb, cb->name);

 mutex_lock(&hci_cb_list_lock);
 list_del(&cb->list);
 mutex_unlock(&hci_cb_list_lock);

 return 0;
}
