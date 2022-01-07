
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ bpf_get_link_xdp_id (int,scalar_t__*,int ) ;
 int bpf_set_link_xdp_fd (int,int,int ) ;
 int exit (int) ;
 int flags ;
 int* ifindex_list ;
 int printf (char*,int) ;
 scalar_t__* prog_id_list ;
 int total_ifindex ;

__attribute__((used)) static void int_exit(int sig)
{
 __u32 prog_id = 0;
 int i = 0;

 for (i = 0; i < total_ifindex; i++) {
  if (bpf_get_link_xdp_id(ifindex_list[i], &prog_id, flags)) {
   printf("bpf_get_link_xdp_id on iface %d failed\n",
          ifindex_list[i]);
   exit(1);
  }
  if (prog_id_list[i] == prog_id)
   bpf_set_link_xdp_fd(ifindex_list[i], -1, flags);
  else if (!prog_id)
   printf("couldn't find a prog id on iface %d\n",
          ifindex_list[i]);
  else
   printf("program on iface %d changed, not removing\n",
          ifindex_list[i]);
  prog_id = 0;
 }
 exit(0);
}
