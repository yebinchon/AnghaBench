
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ signal; } ;
struct record {TYPE_1__ switch_output; } ;


 int switch_output_trigger ;
 scalar_t__ trigger_is_ready (int *) ;

__attribute__((used)) static bool switch_output_signal(struct record *rec)
{
 return rec->switch_output.signal &&
        trigger_is_ready(&switch_output_trigger);
}
