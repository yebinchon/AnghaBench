
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_aux {int ksym_lnode; struct bpf_prog* prog; } ;
struct bpf_prog {unsigned int pages; struct bpf_prog_aux* aux; int jit_requested; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD_RCU (int *) ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SIZE ;
 int __GFP_ZERO ;
 struct bpf_prog* __vmalloc (unsigned int,int,int ) ;
 int ebpf_jit_enabled () ;
 struct bpf_prog_aux* kzalloc (int,int) ;
 unsigned int round_up (unsigned int,unsigned int) ;
 int vfree (struct bpf_prog*) ;

struct bpf_prog *bpf_prog_alloc_no_stats(unsigned int size, gfp_t gfp_extra_flags)
{
 gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
 struct bpf_prog_aux *aux;
 struct bpf_prog *fp;

 size = round_up(size, PAGE_SIZE);
 fp = __vmalloc(size, gfp_flags, PAGE_KERNEL);
 if (fp == ((void*)0))
  return ((void*)0);

 aux = kzalloc(sizeof(*aux), GFP_KERNEL | gfp_extra_flags);
 if (aux == ((void*)0)) {
  vfree(fp);
  return ((void*)0);
 }

 fp->pages = size / PAGE_SIZE;
 fp->aux = aux;
 fp->aux->prog = fp;
 fp->jit_requested = ebpf_jit_enabled();

 INIT_LIST_HEAD_RCU(&fp->aux->ksym_lnode);

 return fp;
}
