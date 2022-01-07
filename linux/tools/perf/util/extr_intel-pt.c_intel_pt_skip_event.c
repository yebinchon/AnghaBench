
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ initial_skip; } ;
struct intel_pt {TYPE_1__ synth_opts; int num_events; } ;



__attribute__((used)) static inline bool intel_pt_skip_event(struct intel_pt *pt)
{
 return pt->synth_opts.initial_skip &&
        pt->num_events++ < pt->synth_opts.initial_skip;
}
