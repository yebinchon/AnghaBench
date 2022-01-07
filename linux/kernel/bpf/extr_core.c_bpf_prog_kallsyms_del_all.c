
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;


 int bpf_prog_kallsyms_del (struct bpf_prog*) ;
 int bpf_prog_kallsyms_del_subprogs (struct bpf_prog*) ;

void bpf_prog_kallsyms_del_all(struct bpf_prog *fp)
{
 bpf_prog_kallsyms_del_subprogs(fp);
 bpf_prog_kallsyms_del(fp);
}
