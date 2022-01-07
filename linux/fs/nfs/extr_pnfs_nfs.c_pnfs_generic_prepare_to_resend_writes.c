
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_page {int wb_verf; } ;
struct TYPE_8__ {int * data; } ;
struct TYPE_7__ {TYPE_4__ verifier; } ;
struct TYPE_6__ {scalar_t__ tk_status; } ;
struct TYPE_5__ {int next; } ;
struct nfs_commit_data {TYPE_3__ verf; TYPE_2__ task; TYPE_1__ pages; } ;


 int memcpy (TYPE_4__*,int *,int) ;
 struct nfs_page* nfs_list_entry (int ) ;

void pnfs_generic_prepare_to_resend_writes(struct nfs_commit_data *data)
{
 struct nfs_page *first = nfs_list_entry(data->pages.next);

 data->task.tk_status = 0;
 memcpy(&data->verf.verifier, &first->wb_verf,
        sizeof(data->verf.verifier));
 data->verf.verifier.data[0]++;
}
