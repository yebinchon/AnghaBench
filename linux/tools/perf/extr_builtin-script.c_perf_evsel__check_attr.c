
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {int evlist; int header; } ;
struct perf_event_attr {int sample_type; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;


 int ADDR ;
 int BRSTACKINSN ;
 int CPU ;
 int DATA_SRC ;
 int DSO ;
 int EINVAL ;
 int HEADER_AUXTRACE ;
 int HEADER_STAT ;
 int IP ;
 int IREGS ;
 int PERF_OUTPUT_ADDR ;
 int PERF_OUTPUT_CPU ;
 int PERF_OUTPUT_DATA_SRC ;
 int PERF_OUTPUT_IP ;
 int PERF_OUTPUT_IREGS ;
 int PERF_OUTPUT_PHYS_ADDR ;
 int PERF_OUTPUT_PID ;
 int PERF_OUTPUT_TID ;
 int PERF_OUTPUT_TIME ;
 int PERF_OUTPUT_UREGS ;
 int PERF_OUTPUT_WEIGHT ;
 int PERF_SAMPLE_ADDR ;
 int PERF_SAMPLE_BRANCH_ANY ;
 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_DATA_SRC ;
 int PERF_SAMPLE_IP ;
 int PERF_SAMPLE_PHYS_ADDR ;
 int PERF_SAMPLE_REGS_INTR ;
 int PERF_SAMPLE_REGS_USER ;
 int PERF_SAMPLE_TID ;
 int PERF_SAMPLE_TIME ;
 int PERF_SAMPLE_WEIGHT ;
 int PHYS_ADDR ;
 int PID ;
 scalar_t__ PRINT_FIELD (int ) ;
 int SRCCODE ;
 int SRCLINE ;
 int SYM ;
 int SYMOFFSET ;
 int TID ;
 int TIME ;
 int TRACE ;
 int UREGS ;
 int WEIGHT ;
 int perf_evlist__combined_branch_type (int ) ;
 scalar_t__ perf_evsel__check_stype (struct evsel*,int,char*,int) ;
 scalar_t__ perf_evsel__do_check_stype (struct evsel*,int,char*,int ,int) ;
 int perf_header__has_feat (int *,int ) ;
 int perf_session__has_traces (struct perf_session*,char*) ;
 int pr_err (char*) ;

__attribute__((used)) static int perf_evsel__check_attr(struct evsel *evsel,
      struct perf_session *session)
{
 struct perf_event_attr *attr = &evsel->core.attr;
 bool allow_user_set;

 if (perf_header__has_feat(&session->header, HEADER_STAT))
  return 0;

 allow_user_set = perf_header__has_feat(&session->header,
            HEADER_AUXTRACE);

 if (PRINT_FIELD(TRACE) &&
  !perf_session__has_traces(session, "record -R"))
  return -EINVAL;

 if (PRINT_FIELD(IP)) {
  if (perf_evsel__check_stype(evsel, PERF_SAMPLE_IP, "IP",
         PERF_OUTPUT_IP))
   return -EINVAL;
 }

 if (PRINT_FIELD(ADDR) &&
  perf_evsel__do_check_stype(evsel, PERF_SAMPLE_ADDR, "ADDR",
        PERF_OUTPUT_ADDR, allow_user_set))
  return -EINVAL;

 if (PRINT_FIELD(DATA_SRC) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_DATA_SRC, "DATA_SRC",
     PERF_OUTPUT_DATA_SRC))
  return -EINVAL;

 if (PRINT_FIELD(WEIGHT) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_WEIGHT, "WEIGHT",
     PERF_OUTPUT_WEIGHT))
  return -EINVAL;

 if (PRINT_FIELD(SYM) &&
  !(evsel->core.attr.sample_type & (PERF_SAMPLE_IP|PERF_SAMPLE_ADDR))) {
  pr_err("Display of symbols requested but neither sample IP nor "
      "sample address\navailable. Hence, no addresses to convert "
         "to symbols.\n");
  return -EINVAL;
 }
 if (PRINT_FIELD(SYMOFFSET) && !PRINT_FIELD(SYM)) {
  pr_err("Display of offsets requested but symbol is not"
         "selected.\n");
  return -EINVAL;
 }
 if (PRINT_FIELD(DSO) &&
  !(evsel->core.attr.sample_type & (PERF_SAMPLE_IP|PERF_SAMPLE_ADDR))) {
  pr_err("Display of DSO requested but no address to convert.\n");
  return -EINVAL;
 }
 if ((PRINT_FIELD(SRCLINE) || PRINT_FIELD(SRCCODE)) && !PRINT_FIELD(IP)) {
  pr_err("Display of source line number requested but sample IP is not\n"
         "selected. Hence, no address to lookup the source line number.\n");
  return -EINVAL;
 }
 if (PRINT_FIELD(BRSTACKINSN) &&
     !(perf_evlist__combined_branch_type(session->evlist) &
       PERF_SAMPLE_BRANCH_ANY)) {
  pr_err("Display of branch stack assembler requested, but non all-branch filter set\n"
         "Hint: run 'perf record -b ...'\n");
  return -EINVAL;
 }
 if ((PRINT_FIELD(PID) || PRINT_FIELD(TID)) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_TID, "TID",
     PERF_OUTPUT_TID|PERF_OUTPUT_PID))
  return -EINVAL;

 if (PRINT_FIELD(TIME) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_TIME, "TIME",
     PERF_OUTPUT_TIME))
  return -EINVAL;

 if (PRINT_FIELD(CPU) &&
  perf_evsel__do_check_stype(evsel, PERF_SAMPLE_CPU, "CPU",
        PERF_OUTPUT_CPU, allow_user_set))
  return -EINVAL;

 if (PRINT_FIELD(IREGS) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_REGS_INTR, "IREGS",
     PERF_OUTPUT_IREGS))
  return -EINVAL;

 if (PRINT_FIELD(UREGS) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_REGS_USER, "UREGS",
     PERF_OUTPUT_UREGS))
  return -EINVAL;

 if (PRINT_FIELD(PHYS_ADDR) &&
  perf_evsel__check_stype(evsel, PERF_SAMPLE_PHYS_ADDR, "PHYS_ADDR",
     PERF_OUTPUT_PHYS_ADDR))
  return -EINVAL;

 return 0;
}
