
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;


 int O_CLOEXEC ;
 int O_RDWR ;
 int anon_inode_getfd (char*,int *,struct bpf_prog*,int) ;
 int bpf_prog_fops ;
 int security_bpf_prog (struct bpf_prog*) ;

int bpf_prog_new_fd(struct bpf_prog *prog)
{
 int ret;

 ret = security_bpf_prog(prog);
 if (ret < 0)
  return ret;

 return anon_inode_getfd("bpf-prog", &bpf_prog_fops, prog,
    O_RDWR | O_CLOEXEC);
}
