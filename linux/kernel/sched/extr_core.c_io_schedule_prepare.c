
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_iowait; } ;


 int blk_schedule_flush_plug (TYPE_1__*) ;
 TYPE_1__* current ;

int io_schedule_prepare(void)
{
 int old_iowait = current->in_iowait;

 current->in_iowait = 1;
 blk_schedule_flush_plug(current);

 return old_iowait;
}
