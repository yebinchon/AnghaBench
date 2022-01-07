
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_filter {int dummy; } ;
struct bpf_prog {int len; int insns; } ;
struct bpf_insn {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 struct bpf_prog* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int __bpf_prog_release (struct bpf_prog*) ;
 int bpf_convert_filter (struct sock_filter*,int,struct bpf_prog*,int*,int*) ;
 struct bpf_prog* bpf_prog_realloc (struct bpf_prog*,int ,int ) ;
 struct bpf_prog* bpf_prog_select_runtime (struct bpf_prog*,int*) ;
 int bpf_prog_size (int) ;
 int kfree (struct sock_filter*) ;
 struct sock_filter* kmemdup (int ,int,int) ;

__attribute__((used)) static struct bpf_prog *bpf_migrate_filter(struct bpf_prog *fp)
{
 struct sock_filter *old_prog;
 struct bpf_prog *old_fp;
 int err, new_len, old_len = fp->len;
 bool seen_ld_abs = 0;






 BUILD_BUG_ON(sizeof(struct sock_filter) !=
       sizeof(struct bpf_insn));





 old_prog = kmemdup(fp->insns, old_len * sizeof(struct sock_filter),
      GFP_KERNEL | __GFP_NOWARN);
 if (!old_prog) {
  err = -ENOMEM;
  goto out_err;
 }


 err = bpf_convert_filter(old_prog, old_len, ((void*)0), &new_len,
     &seen_ld_abs);
 if (err)
  goto out_err_free;


 old_fp = fp;
 fp = bpf_prog_realloc(old_fp, bpf_prog_size(new_len), 0);
 if (!fp) {



  fp = old_fp;
  err = -ENOMEM;
  goto out_err_free;
 }

 fp->len = new_len;


 err = bpf_convert_filter(old_prog, old_len, fp, &new_len,
     &seen_ld_abs);
 if (err)





  goto out_err_free;

 fp = bpf_prog_select_runtime(fp, &err);
 if (err)
  goto out_err_free;

 kfree(old_prog);
 return fp;

out_err_free:
 kfree(old_prog);
out_err:
 __bpf_prog_release(fp);
 return ERR_PTR(err);
}
