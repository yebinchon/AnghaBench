
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_mgmt_chan {int list; } ;


 int list_del (int *) ;
 int mgmt_chan_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void hci_mgmt_chan_unregister(struct hci_mgmt_chan *c)
{
 mutex_lock(&mgmt_chan_list_lock);
 list_del(&c->list);
 mutex_unlock(&mgmt_chan_list_lock);
}
