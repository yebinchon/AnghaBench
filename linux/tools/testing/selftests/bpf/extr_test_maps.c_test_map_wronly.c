
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int key ;


 int BPF_ANY ;
 int BPF_F_WRONLY ;
 int BPF_MAP_TYPE_HASH ;
 scalar_t__ EPERM ;
 int MAP_SIZE ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,int ,int) ;
 int bpf_map_get_next_key (int,int*,int*) ;
 int bpf_map_lookup_elem (int,int*,int*) ;
 scalar_t__ bpf_map_update_elem (int,int*,int*,int ) ;
 scalar_t__ errno ;
 int exit (int) ;
 int map_flags ;
 int printf (char*,char*) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static void test_map_wronly(void)
{
 int fd, key = 0, value = 0;

 fd = bpf_create_map(BPF_MAP_TYPE_HASH, sizeof(key), sizeof(value),
       MAP_SIZE, map_flags | BPF_F_WRONLY);
 if (fd < 0) {
  printf("Failed to create map for read only test '%s'!\n",
         strerror(errno));
  exit(1);
 }

 key = 1;
 value = 1234;

 assert(bpf_map_update_elem(fd, &key, &value, BPF_ANY) == 0);


 assert(bpf_map_lookup_elem(fd, &key, &value) == -1 && errno == EPERM);
 assert(bpf_map_get_next_key(fd, &key, &value) == -1 && errno == EPERM);
}
