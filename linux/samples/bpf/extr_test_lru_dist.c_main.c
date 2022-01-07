
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int map_flags ;


 int BPF_F_NO_COMMON_LRU ;
 int BPF_MAP_TYPE_LRU_HASH ;
 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int assert (int) ;
 int atoi (char*) ;
 int bpf_num_possible_cpus () ;
 int dist_key_counts ;
 int dist_keys ;
 int free (int ) ;
 int min (int,int) ;
 int nr_cpus ;
 int printf (char*,...) ;
 int read_keys (char const*,int *) ;
 int setbuf (int ,int *) ;
 int setrlimit (int ,struct rlimit*) ;
 int srand (int ) ;
 int stdout ;
 int test_lru_loss0 (int ,int) ;
 int test_lru_loss1 (int ,int) ;
 int test_parallel_lru_dist (int ,int,int,int) ;
 int test_parallel_lru_loss (int ,int,int) ;
 int time (int *) ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 int map_flags[] = {0, BPF_F_NO_COMMON_LRU};
 const char *dist_file;
 int nr_tasks = 1;
 int lru_size;
 int f;

 if (argc < 4) {
  printf("Usage: %s <dist-file> <lru-size> <nr-tasks>\n",
         argv[0]);
  return -1;
 }

 dist_file = argv[1];
 lru_size = atoi(argv[2]);
 nr_tasks = atoi(argv[3]);

 setbuf(stdout, ((void*)0));

 assert(!setrlimit(RLIMIT_MEMLOCK, &r));

 srand(time(((void*)0)));

 nr_cpus = bpf_num_possible_cpus();
 assert(nr_cpus != -1);
 printf("nr_cpus:%d\n\n", nr_cpus);

 nr_tasks = min(nr_tasks, nr_cpus);

 dist_key_counts = read_keys(dist_file, &dist_keys);
 if (!dist_key_counts) {
  printf("%s has no key\n", dist_file);
  return -1;
 }

 for (f = 0; f < sizeof(map_flags) / sizeof(*map_flags); f++) {
  test_lru_loss0(BPF_MAP_TYPE_LRU_HASH, map_flags[f]);
  test_lru_loss1(BPF_MAP_TYPE_LRU_HASH, map_flags[f]);
  test_parallel_lru_loss(BPF_MAP_TYPE_LRU_HASH, map_flags[f],
           nr_tasks);
  test_parallel_lru_dist(BPF_MAP_TYPE_LRU_HASH, map_flags[f],
           nr_tasks, lru_size);
  printf("\n");
 }

 free(dist_keys);

 return 0;
}
