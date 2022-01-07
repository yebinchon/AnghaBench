
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock_ops {scalar_t__ remote_port; int local_port; int reply; scalar_t__ family; scalar_t__* local_ip6; scalar_t__* remote_ip6; scalar_t__ op; } ;
typedef int clamp ;
typedef int bufsize ;


 scalar_t__ AF_INET6 ;




 int SOL_SOCKET ;
 int SOL_TCP ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_BPF_SNDCWND_CLAMP ;
 int bpf_ntohl (scalar_t__) ;
 int bpf_printk (char*,int) ;
 int bpf_setsockopt (struct bpf_sock_ops*,int ,int ,int*,int) ;

int bpf_clamp(struct bpf_sock_ops *skops)
{
 int bufsize = 150000;
 int to_init = 10;
 int clamp = 100;
 int rv = 0;
 int op;




 if (bpf_ntohl(skops->remote_port) != 55601 && skops->local_port != 55601) {
  skops->reply = -1;
  return 0;
 }

 op = (int) skops->op;
 if (skops->family == AF_INET6 &&
     skops->local_ip6[0] == skops->remote_ip6[0] &&
     (bpf_ntohl(skops->local_ip6[1]) & 0xfff00000) ==
     (bpf_ntohl(skops->remote_ip6[1]) & 0xfff00000)) {
  switch (op) {
  case 128:
   rv = to_init;
   break;
  case 129:

   rv = bpf_setsockopt(skops, SOL_SOCKET, SO_SNDBUF,
         &bufsize, sizeof(bufsize));
   rv += bpf_setsockopt(skops, SOL_SOCKET,
          SO_RCVBUF, &bufsize,
          sizeof(bufsize));
   break;
  case 131:
   rv = bpf_setsockopt(skops, SOL_TCP,
         TCP_BPF_SNDCWND_CLAMP,
         &clamp, sizeof(clamp));
   break;
  case 130:

   rv = bpf_setsockopt(skops, SOL_TCP,
         TCP_BPF_SNDCWND_CLAMP,
         &clamp, sizeof(clamp));
   rv += bpf_setsockopt(skops, SOL_SOCKET,
          SO_SNDBUF, &bufsize,
          sizeof(bufsize));
   rv += bpf_setsockopt(skops, SOL_SOCKET,
          SO_RCVBUF, &bufsize,
          sizeof(bufsize));
   break;
  default:
   rv = -1;
  }
 } else {
  rv = -1;
 }



 skops->reply = rv;
 return 1;
}
