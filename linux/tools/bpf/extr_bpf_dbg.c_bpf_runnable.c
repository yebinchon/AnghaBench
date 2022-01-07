
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {unsigned int len; struct sock_filter* filter; } ;
struct sock_filter {scalar_t__ k; int code; } ;
typedef int bpf ;


 int AF_INET ;
 scalar_t__ BPF_CLASS (int ) ;
 scalar_t__ BPF_LD ;
 scalar_t__ SKF_AD_OFF ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_ATTACH_FILTER ;
 int close (int) ;
 int rl_printf (char*) ;
 int setsockopt (int,int ,int ,struct sock_fprog*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static bool bpf_runnable(struct sock_filter *f, unsigned int len)
{
 int sock, ret, i;
 struct sock_fprog bpf = {
  .filter = f,
  .len = len,
 };

 sock = socket(AF_INET, SOCK_DGRAM, 0);
 if (sock < 0) {
  rl_printf("cannot open socket!\n");
  return 0;
 }
 ret = setsockopt(sock, SOL_SOCKET, SO_ATTACH_FILTER, &bpf, sizeof(bpf));
 close(sock);
 if (ret < 0) {
  rl_printf("program not allowed to run by kernel!\n");
  return 0;
 }
 for (i = 0; i < len; i++) {
  if (BPF_CLASS(f[i].code) == BPF_LD &&
      f[i].k > SKF_AD_OFF) {
   rl_printf("extensions currently not supported!\n");
   return 0;
  }
 }

 return 1;
}
