
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_TYPE_SOCKET_FILTER ;
 int EPERM ;
 struct bpf_prog* ERR_PTR (int ) ;
 int SOCK_FILTER_LOCKED ;
 struct bpf_prog* bpf_prog_get_type (int ,int ) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static struct bpf_prog *__get_bpf(u32 ufd, struct sock *sk)
{
 if (sock_flag(sk, SOCK_FILTER_LOCKED))
  return ERR_PTR(-EPERM);

 return bpf_prog_get_type(ufd, BPF_PROG_TYPE_SOCKET_FILTER);
}
