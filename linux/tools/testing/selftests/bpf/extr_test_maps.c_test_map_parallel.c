
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int key ;


 int BPF_MAP_TYPE_HASH ;
 int BPF_NOEXIST ;
 int DO_DELETE ;
 int DO_UPDATE ;
 scalar_t__ EEXIST ;
 scalar_t__ ENOENT ;
 int MAP_SIZE ;
 int TASKS ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int bpf_map_get_next_key (int,int*,int*) ;
 scalar_t__ bpf_map_lookup_elem (int,int*,int*) ;
 int bpf_map_update_elem (int,int*,int*,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int map_flags ;
 int printf (char*,char*) ;
 int run_parallel (int ,int ,int*) ;
 char* strerror (scalar_t__) ;
 int test_update_delete ;

__attribute__((used)) static void test_map_parallel(void)
{
 int i, fd, key = 0, value = 0;
 int data[2];

 fd = bpf_create_map(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
       MAP_SIZE, map_flags);
 if (fd < 0) {
  printf("Failed to create map for parallel test '%s'!\n",
         strerror(errno));
  exit(1);
 }






 data[0] = fd;
 data[1] = DO_UPDATE;
 run_parallel(TASKS, test_update_delete, data);


 assert(bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST) == -1 &&
        errno == EEXIST);


 assert(bpf_map_get_next_key(fd, ((void*)0), &key) == 0);
 key = -1;
 for (i = 0; i < MAP_SIZE; i++)
  assert(bpf_map_get_next_key(fd, &key, &key) == 0);
 assert(bpf_map_get_next_key(fd, &key, &key) == -1 && errno == ENOENT);


 for (i = 0; i < MAP_SIZE; i++) {
  key = MAP_SIZE - i - 1;

  assert(bpf_map_lookup_elem(fd, &key, &value) == 0 &&
         value == key);
 }


 data[1] = DO_DELETE;
 run_parallel(TASKS, test_update_delete, data);


 key = -1;
 assert(bpf_map_get_next_key(fd, ((void*)0), &key) == -1 && errno == ENOENT);
 assert(bpf_map_get_next_key(fd, &key, &key) == -1 && errno == ENOENT);
}
