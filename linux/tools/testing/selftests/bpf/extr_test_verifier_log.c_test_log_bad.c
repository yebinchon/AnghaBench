
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LOG_SIZE ;
 int check_ones (char*,int ,char*) ;
 int check_ret (int,int ) ;
 int load (char*,size_t,int) ;

__attribute__((used)) static void test_log_bad(char *log, size_t log_len, int log_level)
{
 int ret;

 ret = load(log, log_len, log_level);
 check_ret(ret, EINVAL);
 if (log)
  check_ones(log, LOG_SIZE,
      "verifier touched log with bad parameters\n");
}
