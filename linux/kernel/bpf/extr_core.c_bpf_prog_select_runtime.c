
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int jited; int aux; scalar_t__ bpf_func; } ;


 int ENOTSUPP ;
 int bpf_check_tail_call (struct bpf_prog*) ;
 struct bpf_prog* bpf_int_jit_compile (struct bpf_prog*) ;
 int bpf_prog_alloc_jited_linfo (struct bpf_prog*) ;
 int bpf_prog_free_jited_linfo (struct bpf_prog*) ;
 int bpf_prog_free_unused_jited_linfo (struct bpf_prog*) ;
 int bpf_prog_is_dev_bound (int ) ;
 int bpf_prog_lock_ro (struct bpf_prog*) ;
 int bpf_prog_offload_compile (struct bpf_prog*) ;
 int bpf_prog_select_func (struct bpf_prog*) ;

struct bpf_prog *bpf_prog_select_runtime(struct bpf_prog *fp, int *err)
{



 if (fp->bpf_func)
  goto finalize;

 bpf_prog_select_func(fp);







 if (!bpf_prog_is_dev_bound(fp->aux)) {
  *err = bpf_prog_alloc_jited_linfo(fp);
  if (*err)
   return fp;

  fp = bpf_int_jit_compile(fp);
  if (!fp->jited) {
   bpf_prog_free_jited_linfo(fp);




  } else {
   bpf_prog_free_unused_jited_linfo(fp);
  }
 } else {
  *err = bpf_prog_offload_compile(fp);
  if (*err)
   return fp;
 }

finalize:
 bpf_prog_lock_ro(fp);






 *err = bpf_check_tail_call(fp);

 return fp;
}
