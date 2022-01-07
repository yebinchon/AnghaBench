
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog {int len; int filter; } ;
struct bpf_prog {int * orig_prog; int len; int insns; } ;
typedef int bpf_aux_classic_check_t ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 int __bpf_prog_free (struct bpf_prog*) ;
 int bpf_check_basics_ok (int ,int ) ;
 unsigned int bpf_classic_proglen (struct sock_fprog*) ;
 struct bpf_prog* bpf_prepare_filter (struct bpf_prog*,int ) ;
 struct bpf_prog* bpf_prog_alloc (int ,int ) ;
 int bpf_prog_size (int ) ;
 int bpf_prog_store_orig_filter (struct bpf_prog*,struct sock_fprog*) ;
 scalar_t__ copy_from_user (int ,int ,unsigned int) ;

int bpf_prog_create_from_user(struct bpf_prog **pfp, struct sock_fprog *fprog,
         bpf_aux_classic_check_t trans, bool save_orig)
{
 unsigned int fsize = bpf_classic_proglen(fprog);
 struct bpf_prog *fp;
 int err;


 if (!bpf_check_basics_ok(fprog->filter, fprog->len))
  return -EINVAL;

 fp = bpf_prog_alloc(bpf_prog_size(fprog->len), 0);
 if (!fp)
  return -ENOMEM;

 if (copy_from_user(fp->insns, fprog->filter, fsize)) {
  __bpf_prog_free(fp);
  return -EFAULT;
 }

 fp->len = fprog->len;
 fp->orig_prog = ((void*)0);

 if (save_orig) {
  err = bpf_prog_store_orig_filter(fp, fprog);
  if (err) {
   __bpf_prog_free(fp);
   return -ENOMEM;
  }
 }




 fp = bpf_prepare_filter(fp, trans);
 if (IS_ERR(fp))
  return PTR_ERR(fp);

 *pfp = fp;
 return 0;
}
