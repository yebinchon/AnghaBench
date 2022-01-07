
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_MAP_TYPE_ARRAY ;
 int BPF_MAP_TYPE_ARRAY_OF_MAPS ;
 int bpf_create_map (int ,int,int,int,int ) ;
 int bpf_create_map_in_map (int ,int *,int,int,int,int ) ;
 int close (int) ;
 int errno ;
 int printf (char*,char*) ;
 scalar_t__ skip_unsupported_map (int ) ;
 char* strerror (int ) ;

__attribute__((used)) static int create_map_in_map(void)
{
 int inner_map_fd, outer_map_fd;

 inner_map_fd = bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(int),
          sizeof(int), 1, 0);
 if (inner_map_fd < 0) {
  if (skip_unsupported_map(BPF_MAP_TYPE_ARRAY))
   return -1;
  printf("Failed to create array '%s'!\n", strerror(errno));
  return inner_map_fd;
 }

 outer_map_fd = bpf_create_map_in_map(BPF_MAP_TYPE_ARRAY_OF_MAPS, ((void*)0),
          sizeof(int), inner_map_fd, 1, 0);
 if (outer_map_fd < 0) {
  if (skip_unsupported_map(BPF_MAP_TYPE_ARRAY_OF_MAPS))
   return -1;
  printf("Failed to create array of maps '%s'!\n",
         strerror(errno));
 }

 close(inner_map_fd);

 return outer_map_fd;
}
