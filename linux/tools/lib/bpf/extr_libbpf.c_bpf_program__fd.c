
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;


 int bpf_program__nth_fd (struct bpf_program const*,int ) ;

int bpf_program__fd(const struct bpf_program *prog)
{
 return bpf_program__nth_fd(prog, 0);
}
