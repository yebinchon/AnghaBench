
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpoa_client {int number_of_mps_macs; int * mps_macs; } ;
struct k_message {int MPS_ctrl; } ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int ,int ,int ) ;
 int pr_info (char*) ;

__attribute__((used)) static void set_mps_mac_addr_rcvd(struct k_message *msg,
      struct mpoa_client *client)
{

 if (client->number_of_mps_macs)
  kfree(client->mps_macs);
 client->number_of_mps_macs = 0;
 client->mps_macs = kmemdup(msg->MPS_ctrl, ETH_ALEN, GFP_KERNEL);
 if (client->mps_macs == ((void*)0)) {
  pr_info("out of memory\n");
  return;
 }
 client->number_of_mps_macs = 1;
}
