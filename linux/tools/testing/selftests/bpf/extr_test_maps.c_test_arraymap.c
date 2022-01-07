
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int key ;


 int BPF_ANY ;
 int BPF_EXIST ;
 int BPF_MAP_TYPE_ARRAY ;
 int BPF_NOEXIST ;
 scalar_t__ E2BIG ;
 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int bpf_map_delete_elem (int,int*) ;
 int bpf_map_get_next_key (int,int*,int*) ;
 int bpf_map_lookup_elem (int,int*,long long*) ;
 int bpf_map_update_elem (int,int*,long long*,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int printf (char*,char*) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void test_arraymap(unsigned int task, void *data)
{
 int key, next_key, fd;
 long long value;

 fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key), sizeof(value),
       2, 0);
 if (fd < 0) {
  printf("Failed to create arraymap '%s'!\n", strerror(errno));
  exit(1);
 }

 key = 1;
 value = 1234;

 assert(bpf_map_update_elem(fd, &key, &value, BPF_ANY) == 0);

 value = 0;
 assert(bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST) == -1 &&
        errno == EEXIST);


 assert(bpf_map_lookup_elem(fd, &key, &value) == 0 && value == 1234);

 key = 0;

 assert(bpf_map_lookup_elem(fd, &key, &value) == 0 && value == 0);




 key = 2;
 assert(bpf_map_update_elem(fd, &key, &value, BPF_EXIST) == -1 &&
        errno == E2BIG);


 assert(bpf_map_lookup_elem(fd, &key, &value) == -1 && errno == ENOENT);


 assert(bpf_map_get_next_key(fd, ((void*)0), &next_key) == 0 &&
        next_key == 0);
 assert(bpf_map_get_next_key(fd, &key, &next_key) == 0 &&
        next_key == 0);
 assert(bpf_map_get_next_key(fd, &next_key, &next_key) == 0 &&
        next_key == 1);
 assert(bpf_map_get_next_key(fd, &next_key, &next_key) == -1 &&
        errno == ENOENT);


 key = 1;
 assert(bpf_map_delete_elem(fd, &key) == -1 && errno == EINVAL);

 close(fd);
}
