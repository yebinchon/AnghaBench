
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_ANY ;
 int atoi (char const*) ;
 int bpf_map_update_elem (int ,int*,int*,int ) ;
 int printf (char*) ;
 int prog_array_fd ;

__attribute__((used)) static int populate_prog_array(const char *event, int prog_fd)
{
 int ind = atoi(event), err;

 err = bpf_map_update_elem(prog_array_fd, &ind, &prog_fd, BPF_ANY);
 if (err < 0) {
  printf("failed to store prog_fd in prog_array\n");
  return -1;
 }
 return 0;
}
