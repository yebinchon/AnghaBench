
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chan ;
 int hci_mgmt_chan_register (int *) ;

int mgmt_init(void)
{
 return hci_mgmt_chan_register(&chan);
}
