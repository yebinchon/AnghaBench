
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_MAP_TYPE_HASH ;
 scalar_t__ ENOMEM ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int map_flags ;
 int printf (char*,int,int,char*) ;
 char* strerror (scalar_t__) ;
 int usleep (int) ;

__attribute__((used)) static void test_hashmap_sizes(unsigned int task, void *data)
{
 int fd, i, j;

 for (i = 1; i <= 512; i <<= 1)
  for (j = 1; j <= 1 << 18; j <<= 1) {
   fd = bpf_create_map(BPF_MAP_TYPE_HASH, i, j,
         2, map_flags);
   if (fd < 0) {
    if (errno == ENOMEM)
     return;
    printf("Failed to create hashmap key=%d value=%d '%s'\n",
           i, j, strerror(errno));
    exit(1);
   }
   close(fd);
   usleep(10);
  }
}
