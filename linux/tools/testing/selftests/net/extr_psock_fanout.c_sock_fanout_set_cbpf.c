
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {int len; struct sock_filter* filter; } ;
struct sock_filter {int dummy; } ;
typedef int bpf_prog ;
typedef int bpf_filter ;


 scalar_t__ BPF_A ;
 scalar_t__ BPF_ABS ;
 scalar_t__ BPF_B ;
 scalar_t__ BPF_LD ;
 scalar_t__ BPF_RET ;
 struct sock_filter BPF_STMT (scalar_t__,int) ;
 int PACKET_FANOUT_DATA ;
 int SOL_PACKET ;
 int exit (int) ;
 int perror (char*) ;
 scalar_t__ setsockopt (int,int ,int ,struct sock_fprog*,int) ;

__attribute__((used)) static void sock_fanout_set_cbpf(int fd)
{
 struct sock_filter bpf_filter[] = {
  BPF_STMT(BPF_LD+BPF_B+BPF_ABS, 80),
  BPF_STMT(BPF_RET+BPF_A, 0),
 };
 struct sock_fprog bpf_prog;

 bpf_prog.filter = bpf_filter;
 bpf_prog.len = sizeof(bpf_filter) / sizeof(struct sock_filter);

 if (setsockopt(fd, SOL_PACKET, PACKET_FANOUT_DATA, &bpf_prog,
         sizeof(bpf_prog))) {
  perror("fanout data cbpf");
  exit(1);
 }
}
