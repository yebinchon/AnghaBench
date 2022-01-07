
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_aux {int work; } ;
struct bpf_prog {struct bpf_prog_aux* aux; } ;


 int INIT_WORK (int *,int ) ;
 int bpf_prog_free_deferred ;
 int schedule_work (int *) ;

void bpf_prog_free(struct bpf_prog *fp)
{
 struct bpf_prog_aux *aux = fp->aux;

 INIT_WORK(&aux->work, bpf_prog_free_deferred);
 schedule_work(&aux->work);
}
