
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_0; int member_1; } ;
typedef int filename ;
typedef int FILE ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int SIGINT ;
 int SIGTERM ;
 char* bpf_log_buf ;
 scalar_t__ bpf_map_get_next_key (int ,long*,long*) ;
 int bpf_map_lookup_elem (int ,long*,long*) ;
 int int_exit ;
 scalar_t__ load_bpf_file (char*) ;
 int * map_fd ;
 int perror (char*) ;
 int * popen (char*,char*) ;
 int print_hist (int ) ;
 int printf (char*,...) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;

int main(int ac, char **argv)
{
 struct rlimit r = {1024*1024, RLIM_INFINITY};
 char filename[256];
 long key, next_key, value;
 FILE *f;
 int i;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (setrlimit(RLIMIT_MEMLOCK, &r)) {
  perror("setrlimit(RLIMIT_MEMLOCK)");
  return 1;
 }

 signal(SIGINT, int_exit);
 signal(SIGTERM, int_exit);


 f = popen("ping -4 -c5 localhost", "r");
 (void) f;


 f = popen("dd if=/dev/zero of=/dev/null count=5000000", "r");
 (void) f;

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 for (i = 0; i < 5; i++) {
  key = 0;
  while (bpf_map_get_next_key(map_fd[0], &key, &next_key) == 0) {
   bpf_map_lookup_elem(map_fd[0], &next_key, &value);
   printf("location 0x%lx count %ld\n", next_key, value);
   key = next_key;
  }
  if (key)
   printf("\n");
  sleep(1);
 }
 print_hist(map_fd[1]);

 return 0;
}
