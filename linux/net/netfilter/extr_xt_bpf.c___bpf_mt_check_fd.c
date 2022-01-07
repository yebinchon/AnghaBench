
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;


 int BPF_PROG_TYPE_SOCKET_FILTER ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_get_type (int,int ) ;

__attribute__((used)) static int __bpf_mt_check_fd(int fd, struct bpf_prog **ret)
{
 struct bpf_prog *prog;

 prog = bpf_prog_get_type(fd, BPF_PROG_TYPE_SOCKET_FILTER);
 if (IS_ERR(prog))
  return PTR_ERR(prog);

 *ret = prog;
 return 0;
}
