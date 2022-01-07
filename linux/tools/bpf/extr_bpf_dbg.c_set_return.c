
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_regs {int Rs; scalar_t__ R; } ;



__attribute__((used)) static void set_return(struct bpf_regs *r)
{
 r->R = 0;
 r->Rs = 1;
}
