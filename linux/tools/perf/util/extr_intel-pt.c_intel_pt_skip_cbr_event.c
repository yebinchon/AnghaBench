
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ initial_skip; } ;
struct intel_pt {scalar_t__ num_events; TYPE_1__ synth_opts; } ;



__attribute__((used)) static inline bool intel_pt_skip_cbr_event(struct intel_pt *pt)
{
 return pt->synth_opts.initial_skip &&
        pt->num_events + 4 < pt->synth_opts.initial_skip;
}
