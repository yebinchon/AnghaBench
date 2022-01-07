
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;


 int CHECK (int,char*,char*,int,...) ;
 int RLIMIT_NOFILE ;
 int SIGALRM ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_DFL ;
 int alarm (scalar_t__) ;
 int do_sk_storage_map_stress_free () ;
 int errno ;
 int getrlimit (int ,struct rlimit*) ;
 int nr_sk_per_thread ;
 int nr_sk_threads ;
 scalar_t__ runtime_s ;
 int setrlimit (int ,struct rlimit*) ;
 int signal (int ,int ) ;
 int stop_handler ;

__attribute__((used)) static void test_sk_storage_map_stress_free(void)
{
 struct rlimit rlim_old, rlim_new = {};
 int err;

 getrlimit(RLIMIT_NOFILE, &rlim_old);

 signal(SIGTERM, stop_handler);
 signal(SIGINT, stop_handler);
 if (runtime_s > 0) {
  signal(SIGALRM, stop_handler);
  alarm(runtime_s);
 }

 if (rlim_old.rlim_cur < nr_sk_threads * nr_sk_per_thread) {
  rlim_new.rlim_cur = nr_sk_threads * nr_sk_per_thread + 128;
  rlim_new.rlim_max = rlim_new.rlim_cur + 128;
  err = setrlimit(RLIMIT_NOFILE, &rlim_new);
  CHECK(err, "setrlimit(RLIMIT_NOFILE)", "rlim_new:%lu errno:%d",
        rlim_new.rlim_cur, errno);
 }

 err = do_sk_storage_map_stress_free();

 signal(SIGTERM, SIG_DFL);
 signal(SIGINT, SIG_DFL);
 if (runtime_s > 0) {
  signal(SIGALRM, SIG_DFL);
  alarm(0);
 }

 if (rlim_new.rlim_cur)
  setrlimit(RLIMIT_NOFILE, &rlim_old);

 CHECK(err, "test_sk_storage_map_stress_free", "err:%d\n", err);
}
