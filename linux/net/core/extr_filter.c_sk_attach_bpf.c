
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct bpf_prog {int dummy; } ;


 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 struct bpf_prog* __get_bpf (int ,struct sock*) ;
 int __sk_attach_prog (struct bpf_prog*,struct sock*) ;
 int bpf_prog_put (struct bpf_prog*) ;

int sk_attach_bpf(u32 ufd, struct sock *sk)
{
 struct bpf_prog *prog = __get_bpf(ufd, sk);
 int err;

 if (IS_ERR(prog))
  return PTR_ERR(prog);

 err = __sk_attach_prog(prog, sk);
 if (err < 0) {
  bpf_prog_put(prog);
  return err;
 }

 return 0;
}
