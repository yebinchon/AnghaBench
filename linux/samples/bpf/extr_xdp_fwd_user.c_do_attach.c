
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_map_update_elem (int,int*,int*,int ) ;
 int bpf_set_link_xdp_fd (int,int,int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int do_attach(int idx, int prog_fd, int map_fd, const char *name)
{
 int err;

 err = bpf_set_link_xdp_fd(idx, prog_fd, 0);
 if (err < 0) {
  printf("ERROR: failed to attach program to %s\n", name);
  return err;
 }


 err = bpf_map_update_elem(map_fd, &idx, &idx, 0);
 if (err)
  printf("ERROR: failed using device %s as TX-port\n", name);

 return err;
}
