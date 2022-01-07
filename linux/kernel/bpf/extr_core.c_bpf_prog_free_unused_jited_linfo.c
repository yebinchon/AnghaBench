
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int * jited_linfo; } ;


 int bpf_prog_free_jited_linfo (struct bpf_prog*) ;

void bpf_prog_free_unused_jited_linfo(struct bpf_prog *prog)
{
 if (prog->aux->jited_linfo && !prog->aux->jited_linfo[0])
  bpf_prog_free_jited_linfo(prog);
}
