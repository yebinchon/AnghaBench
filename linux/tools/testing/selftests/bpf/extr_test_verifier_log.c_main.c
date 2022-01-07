
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int ENOSPC ;
 int LOG_SIZE ;
 int memset (char*,int,int) ;
 int printf (char*) ;
 size_t strlen (char*) ;
 int test_log_bad (char*,int,int) ;
 int test_log_good (char*,int,size_t,size_t,int ,char*) ;

int main(int argc, char **argv)
{
 char full_log[LOG_SIZE];
 char log[LOG_SIZE];
 size_t want_len;
 int i;

 memset(log, 1, LOG_SIZE);


 printf("Test log_level 0...\n");
 test_log_bad(log, LOG_SIZE, 0);

 printf("Test log_size < 128...\n");
 test_log_bad(log, 15, 1);

 printf("Test log_buff = NULL...\n");
 test_log_bad(((void*)0), LOG_SIZE, 1);


 printf("Test oversized buffer...\n");
 test_log_good(full_log, LOG_SIZE, LOG_SIZE, 0, EACCES, full_log);

 want_len = strlen(full_log);

 printf("Test exact buffer...\n");
 test_log_good(log, LOG_SIZE, want_len + 2, want_len, EACCES, full_log);

 printf("Test undersized buffers...\n");
 for (i = 0; i < 64; i++) {
  full_log[want_len - i + 1] = 1;
  full_log[want_len - i] = 0;

  test_log_good(log, LOG_SIZE, want_len + 1 - i, want_len - i,
         ENOSPC, full_log);
 }

 printf("test_verifier_log: OK\n");
 return 0;
}
