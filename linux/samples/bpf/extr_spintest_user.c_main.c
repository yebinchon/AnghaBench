
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
struct ksym {char* name; } ;
typedef int filename ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int assert (int) ;
 char* bpf_log_buf ;
 int bpf_map_delete_elem (int ,long*) ;
 scalar_t__ bpf_map_get_next_key (int ,long*,long*) ;
 int bpf_map_lookup_elem (int ,long*,long*) ;
 struct ksym* ksym_search (long) ;
 scalar_t__ load_bpf_file (char*) ;
 scalar_t__ load_kallsyms () ;
 int * map_fd ;
 int printf (char*,...) ;
 int setrlimit (int ,struct rlimit*) ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;

int main(int ac, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 long key, next_key, value;
 char filename[256];
 struct ksym *sym;
 int i;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);
 setrlimit(RLIMIT_MEMLOCK, &r);

 if (load_kallsyms()) {
  printf("failed to process /proc/kallsyms\n");
  return 2;
 }

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 for (i = 0; i < 5; i++) {
  key = 0;
  printf("kprobing funcs:");
  while (bpf_map_get_next_key(map_fd[0], &key, &next_key) == 0) {
   bpf_map_lookup_elem(map_fd[0], &next_key, &value);
   assert(next_key == value);
   sym = ksym_search(value);
   key = next_key;
   if (!sym) {
    printf("ksym not found. Is kallsyms loaded?\n");
    continue;
   }

   printf(" %s", sym->name);
  }
  if (key)
   printf("\n");
  key = 0;
  while (bpf_map_get_next_key(map_fd[0], &key, &next_key) == 0)
   bpf_map_delete_elem(map_fd[0], &next_key);
  sleep(1);
 }

 return 0;
}
