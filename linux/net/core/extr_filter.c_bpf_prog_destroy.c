
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;


 int __bpf_prog_release (struct bpf_prog*) ;

void bpf_prog_destroy(struct bpf_prog *fp)
{
 __bpf_prog_release(fp);
}
