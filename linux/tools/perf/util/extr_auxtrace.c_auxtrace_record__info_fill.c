
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;
struct perf_record_auxtrace_info {int dummy; } ;
struct auxtrace_record {int (* info_fill ) (struct auxtrace_record*,struct perf_session*,struct perf_record_auxtrace_info*,size_t) ;} ;


 int auxtrace_not_supported () ;
 int stub1 (struct auxtrace_record*,struct perf_session*,struct perf_record_auxtrace_info*,size_t) ;

int auxtrace_record__info_fill(struct auxtrace_record *itr,
          struct perf_session *session,
          struct perf_record_auxtrace_info *auxtrace_info,
          size_t priv_size)
{
 if (itr)
  return itr->info_fill(itr, session, auxtrace_info, priv_size);
 return auxtrace_not_supported();
}
