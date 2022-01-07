
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int func_cnt; int * func; } ;


 int bpf_prog_kallsyms_del (int ) ;

__attribute__((used)) static void bpf_prog_kallsyms_del_subprogs(struct bpf_prog *fp)
{
 int i;

 for (i = 0; i < fp->aux->func_cnt; i++)
  bpf_prog_kallsyms_del(fp->aux->func[i]);
}
