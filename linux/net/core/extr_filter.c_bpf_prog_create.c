
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_fprog_kern {int len; int filter; } ;
struct bpf_prog {int * orig_prog; int len; int insns; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int PTR_ERR (struct bpf_prog*) ;
 int bpf_check_basics_ok (int ,int ) ;
 unsigned int bpf_classic_proglen (struct sock_fprog_kern*) ;
 struct bpf_prog* bpf_prepare_filter (struct bpf_prog*,int *) ;
 struct bpf_prog* bpf_prog_alloc (int ,int ) ;
 int bpf_prog_size (int ) ;
 int memcpy (int ,int ,unsigned int) ;

int bpf_prog_create(struct bpf_prog **pfp, struct sock_fprog_kern *fprog)
{
 unsigned int fsize = bpf_classic_proglen(fprog);
 struct bpf_prog *fp;


 if (!bpf_check_basics_ok(fprog->filter, fprog->len))
  return -EINVAL;

 fp = bpf_prog_alloc(bpf_prog_size(fprog->len), 0);
 if (!fp)
  return -ENOMEM;

 memcpy(fp->insns, fprog->filter, fsize);

 fp->len = fprog->len;




 fp->orig_prog = ((void*)0);




 fp = bpf_prepare_filter(fp, ((void*)0));
 if (IS_ERR(fp))
  return PTR_ERR(fp);

 *pfp = fp;
 return 0;
}
