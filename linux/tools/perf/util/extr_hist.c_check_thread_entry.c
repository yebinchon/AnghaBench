
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp_fmt {int dummy; } ;


 scalar_t__ perf_hpp__is_comm_entry (struct perf_hpp_fmt*) ;
 scalar_t__ perf_hpp__is_thread_entry (struct perf_hpp_fmt*) ;

__attribute__((used)) static bool check_thread_entry(struct perf_hpp_fmt *fmt)
{
 return perf_hpp__is_thread_entry(fmt) || perf_hpp__is_comm_entry(fmt);
}
