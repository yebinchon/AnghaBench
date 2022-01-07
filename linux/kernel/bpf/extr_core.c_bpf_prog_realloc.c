
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct bpf_prog {unsigned int pages; TYPE_1__* aux; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct bpf_prog* prog; int user; } ;


 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SIZE ;
 int __GFP_ZERO ;
 int __bpf_prog_charge (int ,unsigned int) ;
 int __bpf_prog_free (struct bpf_prog*) ;
 int __bpf_prog_uncharge (int ,unsigned int) ;
 struct bpf_prog* __vmalloc (unsigned int,int,int ) ;
 int memcpy (struct bpf_prog*,struct bpf_prog*,unsigned int) ;
 unsigned int round_up (unsigned int,unsigned int) ;

struct bpf_prog *bpf_prog_realloc(struct bpf_prog *fp_old, unsigned int size,
      gfp_t gfp_extra_flags)
{
 gfp_t gfp_flags = GFP_KERNEL | __GFP_ZERO | gfp_extra_flags;
 struct bpf_prog *fp;
 u32 pages, delta;
 int ret;

 BUG_ON(fp_old == ((void*)0));

 size = round_up(size, PAGE_SIZE);
 pages = size / PAGE_SIZE;
 if (pages <= fp_old->pages)
  return fp_old;

 delta = pages - fp_old->pages;
 ret = __bpf_prog_charge(fp_old->aux->user, delta);
 if (ret)
  return ((void*)0);

 fp = __vmalloc(size, gfp_flags, PAGE_KERNEL);
 if (fp == ((void*)0)) {
  __bpf_prog_uncharge(fp_old->aux->user, delta);
 } else {
  memcpy(fp, fp_old, fp_old->pages * PAGE_SIZE);
  fp->pages = pages;
  fp->aux->prog = fp;




  fp_old->aux = ((void*)0);
  __bpf_prog_free(fp_old);
 }

 return fp;
}
