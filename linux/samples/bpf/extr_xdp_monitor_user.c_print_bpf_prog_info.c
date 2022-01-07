
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int fd; } ;


 int* event_fd ;
 TYPE_1__* map_data ;
 int map_data_count ;
 int printf (char*,int,...) ;
 int prog_cnt ;
 int* prog_fd ;

__attribute__((used)) static void print_bpf_prog_info(void)
{
 int i;


 printf("Loaded BPF prog have %d bpf program(s)\n", prog_cnt);
 for (i = 0; i < prog_cnt; i++) {
  printf(" - prog_fd[%d] = fd(%d)\n", i, prog_fd[i]);
 }


 printf("Loaded BPF prog have %d map(s)\n", map_data_count);
 for (i = 0; i < map_data_count; i++) {
  char *name = map_data[i].name;
  int fd = map_data[i].fd;

  printf(" - map_data[%d] = fd(%d) name:%s\n", i, fd, name);
 }


 printf("Searching for (max:%d) event file descriptor(s)\n", prog_cnt);
 for (i = 0; i < prog_cnt; i++) {
  if (event_fd[i] != -1)
   printf(" - event_fd[%d] = fd(%d)\n", i, event_fd[i]);
 }
}
