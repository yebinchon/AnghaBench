
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sock_fprog {struct sock_filter* filter; int len; } ;
struct sock_filter {int member_0; int member_3; int member_2; int member_1; } ;
typedef int p ;


 int ARRAY_SIZE (struct sock_filter*) ;
 int BPF_A ;
 int BPF_ABS ;
 int BPF_ALU ;
 int BPF_LD ;
 int BPF_MOD ;
 int BPF_RET ;
 int BPF_W ;
 int SOL_SOCKET ;
 int SO_ATTACH_REUSEPORT_CBPF ;
 int errno ;
 int error (int,int ,char*) ;
 scalar_t__ setsockopt (int,int ,int ,struct sock_fprog*,int) ;

__attribute__((used)) static void attach_cbpf(int fd, uint16_t mod)
{
 struct sock_filter code[] = {

  { BPF_LD | BPF_W | BPF_ABS, 0, 0, 0 },

  { BPF_ALU | BPF_MOD, 0, 0, mod },

  { BPF_RET | BPF_A, 0, 0, 0 },
 };
 struct sock_fprog p = {
  .len = ARRAY_SIZE(code),
  .filter = code,
 };

 if (setsockopt(fd, SOL_SOCKET, SO_ATTACH_REUSEPORT_CBPF, &p, sizeof(p)))
  error(1, errno, "failed to set SO_ATTACH_REUSEPORT_CBPF");
}
