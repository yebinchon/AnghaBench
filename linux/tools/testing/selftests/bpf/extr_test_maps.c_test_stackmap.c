
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef scalar_t__ __u32 ;


 int BPF_EXIST ;
 int BPF_F_NO_PREALLOC ;
 int BPF_MAP_TYPE_STACK ;
 scalar_t__ E2BIG ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int const,int) ;
 int bpf_map_delete_elem (int,int *) ;
 int bpf_map_get_next_key (int,int *,int *) ;
 int bpf_map_lookup_and_delete_elem (int,int *,scalar_t__*) ;
 scalar_t__ bpf_map_lookup_elem (int,int *,scalar_t__*) ;
 int bpf_map_update_elem (int,int *,scalar_t__*,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int map_flags ;
 int printf (char*,char*) ;
 scalar_t__ rand () ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void test_stackmap(unsigned int task, void *data)
{
 const int MAP_SIZE = 32;
 __u32 vals[MAP_SIZE + MAP_SIZE/2], val;
 int fd, i;


 for (i = 0; i < MAP_SIZE + MAP_SIZE/2; i++)
  vals[i] = rand();


 fd = bpf_create_map(BPF_MAP_TYPE_STACK, 4, sizeof(val), MAP_SIZE,
       map_flags);
 assert(fd < 0 && errno == EINVAL);

 fd = bpf_create_map(BPF_MAP_TYPE_STACK, 0, sizeof(val), MAP_SIZE,
       map_flags);

 if (map_flags & BPF_F_NO_PREALLOC) {
  assert(fd < 0 && errno == EINVAL);
  return;
 }
 if (fd < 0) {
  printf("Failed to create stackmap '%s'!\n", strerror(errno));
  exit(1);
 }


 for (i = 0; i < MAP_SIZE; i++)
  assert(bpf_map_update_elem(fd, ((void*)0), &vals[i], 0) == 0);


 assert(bpf_map_update_elem(fd, ((void*)0), &val, 0) == -1 &&
        errno == E2BIG);


 assert(bpf_map_lookup_elem(fd, ((void*)0), &val) == 0 && val == vals[i - 1]);


 for (i = MAP_SIZE; i < MAP_SIZE + MAP_SIZE/2; i++)
  assert(bpf_map_update_elem(fd, ((void*)0), &vals[i], BPF_EXIST) == 0);


 for (i = MAP_SIZE + MAP_SIZE/2 - 1; i >= MAP_SIZE/2; i--)
  assert(bpf_map_lookup_and_delete_elem(fd, ((void*)0), &val) == 0 &&
         val == vals[i]);


 assert(bpf_map_lookup_and_delete_elem(fd, ((void*)0), &val) == -1 &&
        errno == ENOENT);


 assert(bpf_map_delete_elem(fd, ((void*)0)) == -1 && errno == EINVAL);
 assert(bpf_map_get_next_key(fd, ((void*)0), ((void*)0)) == -1 && errno == EINVAL);

 close(fd);
}
