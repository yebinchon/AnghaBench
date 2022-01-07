
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chan ;
 int hci_mgmt_chan_unregister (int *) ;

void mgmt_exit(void)
{
 hci_mgmt_chan_unregister(&chan);
}
