
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bpf_set_link_xdp_fd (int ,int,int ) ;
 int exit (int) ;
 int ifindex ;
 int xdp_flags ;

__attribute__((used)) static void cleanup(int sig)
{
 bpf_set_link_xdp_fd(ifindex, -1, xdp_flags);
 if (sig)
  exit(1);
}
