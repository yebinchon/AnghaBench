
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {TYPE_1__* aux; } ;
struct TYPE_2__ {int stats; } ;


 int free_percpu (int ) ;
 int kfree (TYPE_1__*) ;
 int vfree (struct bpf_prog*) ;

void __bpf_prog_free(struct bpf_prog *fp)
{
 if (fp->aux) {
  free_percpu(fp->aux->stats);
  kfree(fp->aux);
 }
 vfree(fp);
}
