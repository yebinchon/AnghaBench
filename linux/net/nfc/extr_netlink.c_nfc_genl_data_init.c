
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_genl_data {int genl_data_mutex; scalar_t__ poll_req_portid; } ;


 int mutex_init (int *) ;

void nfc_genl_data_init(struct nfc_genl_data *genl_data)
{
 genl_data->poll_req_portid = 0;
 mutex_init(&genl_data->genl_data_mutex);
}
