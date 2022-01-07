
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pretty; } ;
typedef TYPE_1__ json_writer_t ;



void jsonw_pretty(json_writer_t *self, bool on)
{
 self->pretty = on;
}
