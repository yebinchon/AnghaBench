
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_genl_data {int genl_data_mutex; } ;


 int mutex_destroy (int *) ;

void nfc_genl_data_exit(struct nfc_genl_data *genl_data)
{
 mutex_destroy(&genl_data->genl_data_mutex);
}
