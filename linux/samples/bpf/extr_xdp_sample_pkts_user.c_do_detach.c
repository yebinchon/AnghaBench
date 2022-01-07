
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 int bpf_get_link_xdp_id (int,scalar_t__*,int ) ;
 int bpf_set_link_xdp_fd (int,int,int ) ;
 int printf (char*,...) ;
 scalar_t__ prog_id ;

__attribute__((used)) static int do_detach(int idx, const char *name)
{
 __u32 curr_prog_id = 0;
 int err = 0;

 err = bpf_get_link_xdp_id(idx, &curr_prog_id, 0);
 if (err) {
  printf("bpf_get_link_xdp_id failed\n");
  return err;
 }
 if (prog_id == curr_prog_id) {
  err = bpf_set_link_xdp_fd(idx, -1, 0);
  if (err < 0)
   printf("ERROR: failed to detach prog from %s\n", name);
 } else if (!curr_prog_id) {
  printf("couldn't find a prog id on a %s\n", name);
 } else {
  printf("program on interface changed, not removing\n");
 }

 return err;
}
