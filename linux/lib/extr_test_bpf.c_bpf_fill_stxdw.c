
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_test {int dummy; } ;


 int BPF_DW ;
 int __bpf_fill_stxdw (struct bpf_test*,int ) ;

__attribute__((used)) static int bpf_fill_stxdw(struct bpf_test *self)
{
 return __bpf_fill_stxdw(self, BPF_DW);
}
