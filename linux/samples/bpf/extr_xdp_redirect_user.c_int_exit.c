
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ bpf_get_link_xdp_id (int ,scalar_t__*,int ) ;
 int bpf_set_link_xdp_fd (int ,int,int ) ;
 scalar_t__ dummy_prog_id ;
 int exit (int) ;
 int ifindex_in ;
 int ifindex_out ;
 scalar_t__ ifindex_out_xdp_dummy_attached ;
 int printf (char*) ;
 scalar_t__ prog_id ;
 int xdp_flags ;

__attribute__((used)) static void int_exit(int sig)
{
 __u32 curr_prog_id = 0;

 if (bpf_get_link_xdp_id(ifindex_in, &curr_prog_id, xdp_flags)) {
  printf("bpf_get_link_xdp_id failed\n");
  exit(1);
 }
 if (prog_id == curr_prog_id)
  bpf_set_link_xdp_fd(ifindex_in, -1, xdp_flags);
 else if (!curr_prog_id)
  printf("couldn't find a prog id on iface IN\n");
 else
  printf("program on iface IN changed, not removing\n");

 if (ifindex_out_xdp_dummy_attached) {
  curr_prog_id = 0;
  if (bpf_get_link_xdp_id(ifindex_out, &curr_prog_id,
     xdp_flags)) {
   printf("bpf_get_link_xdp_id failed\n");
   exit(1);
  }
  if (dummy_prog_id == curr_prog_id)
   bpf_set_link_xdp_fd(ifindex_out, -1, xdp_flags);
  else if (!curr_prog_id)
   printf("couldn't find a prog id on iface OUT\n");
  else
   printf("program on iface OUT changed, not removing\n");
 }
 exit(0);
}
