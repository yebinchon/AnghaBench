
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ test__start_subtest (char*) ;
 int test_send_signal_nmi () ;
 int test_send_signal_perf () ;
 int test_send_signal_tracepoint () ;

void test_send_signal(void)
{
 if (test__start_subtest("send_signal_tracepoint"))
  test_send_signal_tracepoint();
 if (test__start_subtest("send_signal_perf"))
  test_send_signal_perf();
 if (test__start_subtest("send_signal_nmi"))
  test_send_signal_nmi();
}
