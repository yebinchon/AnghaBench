
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK (int,char*,char*,int) ;
 int SIGALRM ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_DFL ;
 int alarm (scalar_t__) ;
 int do_sk_storage_map_stress_change () ;
 scalar_t__ runtime_s ;
 int signal (int ,int ) ;
 int stop_handler ;

__attribute__((used)) static void test_sk_storage_map_stress_change(void)
{
 int err;

 signal(SIGTERM, stop_handler);
 signal(SIGINT, stop_handler);
 if (runtime_s > 0) {
  signal(SIGALRM, stop_handler);
  alarm(runtime_s);
 }

 err = do_sk_storage_map_stress_change();

 signal(SIGTERM, SIG_DFL);
 signal(SIGINT, SIG_DFL);
 if (runtime_s > 0) {
  signal(SIGALRM, SIG_DFL);
  alarm(0);
 }

 CHECK(err, "test_sk_storage_map_stress_change", "err:%d\n", err);
}
