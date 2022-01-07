
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
union perf_event {TYPE_2__ header; } ;
struct perf_sample {int raw_size; scalar_t__ raw_data; } ;
struct TYPE_3__ {int attr; } ;
struct evsel {TYPE_1__ core; } ;


 int ENTER ;
 int FREETMPS ;
 int G_SCALAR ;
 int LEAVE ;
 int PUSHMARK (int ) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SP ;
 int SPAGAIN ;
 int XPUSHs (int ) ;
 int call_pv (char*,int ) ;
 int dSP ;
 int get_cv (char*,int ) ;
 int newSVpvn (char const*,int) ;
 int sv_2mortal (int ) ;

__attribute__((used)) static void perl_process_event_generic(union perf_event *event,
           struct perf_sample *sample,
           struct evsel *evsel)
{
 dSP;

 if (!get_cv("process_event", 0))
  return;

 ENTER;
 SAVETMPS;
 PUSHMARK(SP);
 XPUSHs(sv_2mortal(newSVpvn((const char *)event, event->header.size)));
 XPUSHs(sv_2mortal(newSVpvn((const char *)&evsel->core.attr, sizeof(evsel->core.attr))));
 XPUSHs(sv_2mortal(newSVpvn((const char *)sample, sizeof(*sample))));
 XPUSHs(sv_2mortal(newSVpvn((const char *)sample->raw_data, sample->raw_size)));
 PUTBACK;
 call_pv("process_event", G_SCALAR);
 SPAGAIN;
 PUTBACK;
 FREETMPS;
 LEAVE;
}
