
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_set_link_xdp_fd (int,int,int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int do_detach(int idx, const char *name)
{
 int err;

 err = bpf_set_link_xdp_fd(idx, -1, 0);
 if (err < 0)
  printf("ERROR: failed to detach program from %s\n", name);




 return err;
}
