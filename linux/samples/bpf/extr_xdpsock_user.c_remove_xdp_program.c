
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int EXIT_FAILURE ;
 scalar_t__ bpf_get_link_xdp_id (int ,scalar_t__*,int ) ;
 int bpf_set_link_xdp_fd (int ,int,int ) ;
 int exit (int ) ;
 int opt_ifindex ;
 int opt_xdp_flags ;
 int printf (char*) ;
 scalar_t__ prog_id ;

__attribute__((used)) static void remove_xdp_program(void)
{
 __u32 curr_prog_id = 0;

 if (bpf_get_link_xdp_id(opt_ifindex, &curr_prog_id, opt_xdp_flags)) {
  printf("bpf_get_link_xdp_id failed\n");
  exit(EXIT_FAILURE);
 }
 if (prog_id == curr_prog_id)
  bpf_set_link_xdp_fd(opt_ifindex, -1, opt_xdp_flags);
 else if (!curr_prog_id)
  printf("couldn't find a prog id on a given interface\n");
 else
  printf("program on interface changed, not removing\n");
}
