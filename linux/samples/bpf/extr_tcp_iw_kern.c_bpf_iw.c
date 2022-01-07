
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sock_ops {int local_port; int reply; scalar_t__ op; int remote_port; } ;
typedef int iw ;
typedef int bufsize ;






 int SOL_SOCKET ;
 int SOL_TCP ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int TCP_BPF_IW ;
 int bpf_ntohl (int ) ;
 int bpf_printk (char*,int) ;
 int bpf_setsockopt (struct bpf_sock_ops*,int ,int ,int*,int) ;

int bpf_iw(struct bpf_sock_ops *skops)
{
 int bufsize = 1500000;
 int rwnd_init = 40;
 int iw = 40;
 int rv = 0;
 int op;




 if (bpf_ntohl(skops->remote_port) != 55601 &&
     skops->local_port != 55601) {
  skops->reply = -1;
  return 1;
 }

 op = (int) skops->op;
 switch (op) {
 case 129:
  rv = rwnd_init;
  break;
 case 128:

  rv = bpf_setsockopt(skops, SOL_SOCKET, SO_SNDBUF, &bufsize,
        sizeof(bufsize));
  rv += bpf_setsockopt(skops, SOL_SOCKET, SO_RCVBUF,
         &bufsize, sizeof(bufsize));
  break;
 case 131:
  rv = bpf_setsockopt(skops, SOL_TCP, TCP_BPF_IW, &iw,
        sizeof(iw));
  break;
 case 130:

  rv = bpf_setsockopt(skops, SOL_SOCKET, SO_SNDBUF, &bufsize,
        sizeof(bufsize));
  rv += bpf_setsockopt(skops, SOL_SOCKET, SO_RCVBUF,
          &bufsize, sizeof(bufsize));
  break;
 default:
  rv = -1;
 }



 skops->reply = rv;
 return 1;
}
