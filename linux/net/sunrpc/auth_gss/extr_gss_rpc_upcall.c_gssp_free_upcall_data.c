
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
struct TYPE_5__ {int data; } ;
struct TYPE_4__ {int data; } ;
struct gssp_upcall_data {int creds; TYPE_3__ out_token; TYPE_2__ out_handle; TYPE_1__ in_handle; } ;


 int free_svc_cred (int *) ;
 int kfree (int ) ;

void gssp_free_upcall_data(struct gssp_upcall_data *data)
{
 kfree(data->in_handle.data);
 kfree(data->out_handle.data);
 kfree(data->out_token.data);
 free_svc_cred(&data->creds);
}
