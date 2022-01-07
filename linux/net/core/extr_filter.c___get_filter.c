
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {int len; int filter; } ;
struct sock {int dummy; } ;
struct bpf_prog {int len; int insns; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 struct bpf_prog* ERR_PTR (int ) ;
 int SOCK_FILTER_LOCKED ;
 int __bpf_prog_free (struct bpf_prog*) ;
 int bpf_check_basics_ok (int ,int ) ;
 unsigned int bpf_classic_proglen (struct sock_fprog*) ;
 struct bpf_prog* bpf_prepare_filter (struct bpf_prog*,int *) ;
 struct bpf_prog* bpf_prog_alloc (int ,int ) ;
 int bpf_prog_size (int ) ;
 int bpf_prog_store_orig_filter (struct bpf_prog*,struct sock_fprog*) ;
 scalar_t__ copy_from_user (int ,int ,unsigned int) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static
struct bpf_prog *__get_filter(struct sock_fprog *fprog, struct sock *sk)
{
 unsigned int fsize = bpf_classic_proglen(fprog);
 struct bpf_prog *prog;
 int err;

 if (sock_flag(sk, SOCK_FILTER_LOCKED))
  return ERR_PTR(-EPERM);


 if (!bpf_check_basics_ok(fprog->filter, fprog->len))
  return ERR_PTR(-EINVAL);

 prog = bpf_prog_alloc(bpf_prog_size(fprog->len), 0);
 if (!prog)
  return ERR_PTR(-ENOMEM);

 if (copy_from_user(prog->insns, fprog->filter, fsize)) {
  __bpf_prog_free(prog);
  return ERR_PTR(-EFAULT);
 }

 prog->len = fprog->len;

 err = bpf_prog_store_orig_filter(prog, fprog);
 if (err) {
  __bpf_prog_free(prog);
  return ERR_PTR(-ENOMEM);
 }




 return bpf_prepare_filter(prog, ((void*)0));
}
