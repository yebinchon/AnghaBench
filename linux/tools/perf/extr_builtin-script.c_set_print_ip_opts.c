
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int type; } ;
struct TYPE_2__ {int print_ip_opts; } ;


 int DSO ;
 int EVSEL__PRINT_DSO ;
 int EVSEL__PRINT_IP ;
 int EVSEL__PRINT_SRCLINE ;
 int EVSEL__PRINT_SYM ;
 int EVSEL__PRINT_SYMOFFSET ;
 int IP ;
 scalar_t__ PRINT_FIELD (int ) ;
 int SRCLINE ;
 int SYM ;
 int SYMOFFSET ;
 TYPE_1__* output ;
 unsigned int output_type (int ) ;

__attribute__((used)) static void set_print_ip_opts(struct perf_event_attr *attr)
{
 unsigned int type = output_type(attr->type);

 output[type].print_ip_opts = 0;
 if (PRINT_FIELD(IP))
  output[type].print_ip_opts |= EVSEL__PRINT_IP;

 if (PRINT_FIELD(SYM))
  output[type].print_ip_opts |= EVSEL__PRINT_SYM;

 if (PRINT_FIELD(DSO))
  output[type].print_ip_opts |= EVSEL__PRINT_DSO;

 if (PRINT_FIELD(SYMOFFSET))
  output[type].print_ip_opts |= EVSEL__PRINT_SYMOFFSET;

 if (PRINT_FIELD(SRCLINE))
  output[type].print_ip_opts |= EVSEL__PRINT_SRCLINE;
}
