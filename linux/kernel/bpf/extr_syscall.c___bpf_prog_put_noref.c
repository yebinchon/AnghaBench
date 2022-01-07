
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int rcu; int btf; } ;


 int __bpf_prog_put_rcu (int *) ;
 int bpf_prog_free_linfo (struct bpf_prog*) ;
 int bpf_prog_kallsyms_del_all (struct bpf_prog*) ;
 int btf_put (int ) ;
 int call_rcu (int *,int (*) (int *)) ;

__attribute__((used)) static void __bpf_prog_put_noref(struct bpf_prog *prog, bool deferred)
{
 bpf_prog_kallsyms_del_all(prog);
 btf_put(prog->aux->btf);
 bpf_prog_free_linfo(prog);

 if (deferred)
  call_rcu(&prog->aux->rcu, __bpf_prog_put_rcu);
 else
  __bpf_prog_put_rcu(&prog->aux->rcu);
}
