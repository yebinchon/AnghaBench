
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_iowait; } ;


 TYPE_1__* current ;

void io_schedule_finish(int token)
{
 current->in_iowait = token;
}
