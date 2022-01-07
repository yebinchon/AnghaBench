
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int dummy; } ;


 int TP_FLAG_PROFILE ;
 int TP_FLAG_TRACE ;
 int trace_probe_test_flag (struct trace_probe*,int) ;

__attribute__((used)) static inline bool trace_probe_is_enabled(struct trace_probe *tp)
{
 return trace_probe_test_flag(tp, TP_FLAG_TRACE | TP_FLAG_PROFILE);
}
