
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int EXIT_FAIL ;
 int EXIT_OK ;
 scalar_t__ bpf_get_link_xdp_id (int,scalar_t__*,int ) ;
 int bpf_set_link_xdp_fd (int,int,int ) ;
 int exit (int ) ;
 int fprintf (int ,char*,int,char*) ;
 int ifindex ;
 char* ifname ;
 int printf (char*) ;
 scalar_t__ prog_id ;
 int stderr ;
 int xdp_flags ;

__attribute__((used)) static void int_exit(int sig)
{
 __u32 curr_prog_id = 0;

 if (ifindex > -1) {
  if (bpf_get_link_xdp_id(ifindex, &curr_prog_id, xdp_flags)) {
   printf("bpf_get_link_xdp_id failed\n");
   exit(EXIT_FAIL);
  }
  if (prog_id == curr_prog_id) {
   fprintf(stderr,
    "Interrupted: Removing XDP program on ifindex:%d device:%s\n",
    ifindex, ifname);
   bpf_set_link_xdp_fd(ifindex, -1, xdp_flags);
  } else if (!curr_prog_id) {
   printf("couldn't find a prog id on a given iface\n");
  } else {
   printf("program on interface changed, not removing\n");
  }
 }
 exit(EXIT_OK);
}
