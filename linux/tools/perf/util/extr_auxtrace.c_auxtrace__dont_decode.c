
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {TYPE_1__* itrace_synth_opts; } ;
struct TYPE_2__ {scalar_t__ dont_decode; } ;



__attribute__((used)) static bool auxtrace__dont_decode(struct perf_session *session)
{
 return !session->itrace_synth_opts ||
        session->itrace_synth_opts->dont_decode;
}
