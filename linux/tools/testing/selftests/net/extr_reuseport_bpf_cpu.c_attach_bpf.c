
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {int len; struct sock_filter* filter; } ;
struct sock_filter {int member_0; scalar_t__ member_3; int member_2; int member_1; } ;
typedef int p ;


 int BPF_A ;
 int BPF_ABS ;
 int BPF_LD ;
 int BPF_RET ;
 int BPF_W ;
 scalar_t__ SKF_AD_CPU ;
 scalar_t__ SKF_AD_OFF ;
 int SOL_SOCKET ;
 int SO_ATTACH_REUSEPORT_CBPF ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ setsockopt (int,int ,int ,struct sock_fprog*,int) ;

__attribute__((used)) static void attach_bpf(int fd)
{
 struct sock_filter code[] = {

  { BPF_LD | BPF_W | BPF_ABS, 0, 0, SKF_AD_OFF + SKF_AD_CPU },

  { BPF_RET | BPF_A, 0, 0, 0 },
 };
 struct sock_fprog p = {
  .len = 2,
  .filter = code,
 };

 if (setsockopt(fd, SOL_SOCKET, SO_ATTACH_REUSEPORT_CBPF, &p, sizeof(p)))
  error(1, errno, "failed to set SO_ATTACH_REUSEPORT_CBPF");
}
