
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bpf_prog {int dummy; } ;


 struct bpf_prog* __bpf_prog_get (int ,int *,int) ;

struct bpf_prog *bpf_prog_get(u32 ufd)
{
 return __bpf_prog_get(ufd, ((void*)0), 0);
}
