
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int key ;


 int BPF_ANY ;
 int BPF_EXIST ;
 int BPF_MAP_TYPE_HASH ;
 int BPF_NOEXIST ;
 scalar_t__ E2BIG ;
 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int bpf_map_delete_elem (int,long long*) ;
 int bpf_map_get_next_key (int,long long*,long long*) ;
 int bpf_map_lookup_elem (int,long long*,long long*) ;
 int bpf_map_update_elem (int,long long*,long long*,int) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int map_flags ;
 int printf (char*,char*) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void test_hashmap(unsigned int task, void *data)
{
 long long key, next_key, first_key, value;
 int fd;

 fd = bpf_create_map(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
       2, map_flags);
 if (fd < 0) {
  printf("Failed to create hashmap '%s'!\n", strerror(errno));
  exit(1);
 }

 key = 1;
 value = 1234;

 assert(bpf_map_update_elem(fd, &key, &value, BPF_ANY) == 0);

 value = 0;

 assert(bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST) == -1 &&

        errno == EEXIST);


 assert(bpf_map_update_elem(fd, &key, &value, -1) == -1 &&
        errno == EINVAL);


 assert(bpf_map_lookup_elem(fd, &key, &value) == 0 && value == 1234);

 key = 2;

 assert(bpf_map_lookup_elem(fd, &key, &value) == -1 && errno == ENOENT);


 assert(bpf_map_update_elem(fd, &key, &value, BPF_EXIST) == -1 &&

        errno == ENOENT);


 assert(bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST) == 0);




 key = 0;
 assert(bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST) == -1 &&
        errno == E2BIG);


 key = 1;
 assert(bpf_map_update_elem(fd, &key, &value, BPF_EXIST) == 0);
 key = 2;
 assert(bpf_map_update_elem(fd, &key, &value, BPF_ANY) == 0);
 key = 3;
 assert(bpf_map_update_elem(fd, &key, &value, BPF_NOEXIST) == -1 &&
        errno == E2BIG);


 key = 0;
 assert(bpf_map_delete_elem(fd, &key) == -1 && errno == ENOENT);


 assert(bpf_map_get_next_key(fd, ((void*)0), &first_key) == 0 &&
        (first_key == 1 || first_key == 2));
 assert(bpf_map_get_next_key(fd, &key, &next_key) == 0 &&
        (next_key == first_key));
 assert(bpf_map_get_next_key(fd, &next_key, &next_key) == 0 &&
        (next_key == 1 || next_key == 2) &&
        (next_key != first_key));
 assert(bpf_map_get_next_key(fd, &next_key, &next_key) == -1 &&
        errno == ENOENT);


 key = 1;
 assert(bpf_map_delete_elem(fd, &key) == 0);
 key = 2;
 assert(bpf_map_delete_elem(fd, &key) == 0);
 assert(bpf_map_delete_elem(fd, &key) == -1 && errno == ENOENT);

 key = 0;

 assert(bpf_map_get_next_key(fd, ((void*)0), &next_key) == -1 &&
        errno == ENOENT);
 assert(bpf_map_get_next_key(fd, &key, &next_key) == -1 &&
        errno == ENOENT);

 close(fd);
}
