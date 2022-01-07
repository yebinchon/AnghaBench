
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int msg_id; int task_id; int large; int drv_id; int busy; int res_rqd; scalar_t__ done; } ;
struct TYPE_5__ {TYPE_1__ part; } ;
struct TYPE_6__ {TYPE_2__ header_high; } ;
union ipc_header_mrfld {TYPE_3__ p; scalar_t__ full; } ;



void sst_fill_header_mrfld(union ipc_header_mrfld *header,
    int msg, int task_id, int large, int drv_id)
{
 header->full = 0;
 header->p.header_high.part.msg_id = msg;
 header->p.header_high.part.task_id = task_id;
 header->p.header_high.part.large = large;
 header->p.header_high.part.drv_id = drv_id;
 header->p.header_high.part.done = 0;
 header->p.header_high.part.busy = 1;
 header->p.header_high.part.res_rqd = 1;
}
