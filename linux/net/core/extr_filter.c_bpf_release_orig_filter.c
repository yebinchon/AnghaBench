
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog_kern {struct sock_fprog_kern* filter; } ;
struct bpf_prog {struct sock_fprog_kern* orig_prog; } ;


 int kfree (struct sock_fprog_kern*) ;

__attribute__((used)) static void bpf_release_orig_filter(struct bpf_prog *fp)
{
 struct sock_fprog_kern *fprog = fp->orig_prog;

 if (fprog) {
  kfree(fprog->filter);
  kfree(fprog);
 }
}
