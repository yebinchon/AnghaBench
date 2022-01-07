
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {scalar_t__ sk_type; scalar_t__ sk_protocol; scalar_t__ sk_family; } ;
struct bpf_prog {scalar_t__ type; int len; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ BPF_PROG_TYPE_SK_REUSEPORT ;
 scalar_t__ BPF_PROG_TYPE_SOCKET_FILTER ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int EPERM ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_FILTER_LOCKED ;
 scalar_t__ SOCK_STREAM ;
 struct bpf_prog* bpf_prog_get_type (int ,scalar_t__) ;
 int bpf_prog_put (struct bpf_prog*) ;
 scalar_t__ bpf_prog_size (int ) ;
 int reuseport_attach_prog (struct sock*,struct bpf_prog*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 scalar_t__ sysctl_optmem_max ;

int sk_reuseport_attach_bpf(u32 ufd, struct sock *sk)
{
 struct bpf_prog *prog;
 int err;

 if (sock_flag(sk, SOCK_FILTER_LOCKED))
  return -EPERM;

 prog = bpf_prog_get_type(ufd, BPF_PROG_TYPE_SOCKET_FILTER);
 if (IS_ERR(prog) && PTR_ERR(prog) == -EINVAL)
  prog = bpf_prog_get_type(ufd, BPF_PROG_TYPE_SK_REUSEPORT);
 if (IS_ERR(prog))
  return PTR_ERR(prog);

 if (prog->type == BPF_PROG_TYPE_SK_REUSEPORT) {





  if ((sk->sk_type != SOCK_STREAM &&
       sk->sk_type != SOCK_DGRAM) ||
      (sk->sk_protocol != IPPROTO_UDP &&
       sk->sk_protocol != IPPROTO_TCP) ||
      (sk->sk_family != AF_INET &&
       sk->sk_family != AF_INET6)) {
   err = -ENOTSUPP;
   goto err_prog_put;
  }
 } else {

  if (bpf_prog_size(prog->len) > sysctl_optmem_max) {
   err = -ENOMEM;
   goto err_prog_put;
  }
 }

 err = reuseport_attach_prog(sk, prog);
err_prog_put:
 if (err)
  bpf_prog_put(prog);

 return err;
}
