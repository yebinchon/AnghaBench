
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock_fprog_kern {unsigned int len; void* filter; } ;
struct bpf_prog {unsigned int len; TYPE_1__* aux; int insnsi; int type; } ;
struct bpf_insn {int dummy; } ;
typedef int __u8 ;
struct TYPE_4__ {int aux; int expected_errcode; int stack_depth; } ;
struct TYPE_3__ {int stack_depth; } ;


 int BPF_PROG_TYPE_SOCKET_FILTER ;

 int EINVAL ;
 int ENOMEM ;
 int FLAG_EXPECTED_FAIL ;

 int TEST_TYPE_MASK ;
 struct bpf_prog* bpf_prog_alloc (int ,int ) ;
 int bpf_prog_create (struct bpf_prog**,struct sock_fprog_kern*) ;
 struct bpf_prog* bpf_prog_select_runtime (struct bpf_prog*,int*) ;
 int bpf_prog_size (unsigned int) ;
 unsigned int filter_length (int) ;
 void* filter_pointer (int) ;
 int memcpy (int ,void*,int) ;
 int pr_cont (char*,...) ;
 TYPE_2__* tests ;

__attribute__((used)) static struct bpf_prog *generate_filter(int which, int *err)
{
 __u8 test_type = tests[which].aux & TEST_TYPE_MASK;
 unsigned int flen = filter_length(which);
 void *fptr = filter_pointer(which);
 struct sock_fprog_kern fprog;
 struct bpf_prog *fp;

 switch (test_type) {
 case 129:
  fprog.filter = fptr;
  fprog.len = flen;

  *err = bpf_prog_create(&fp, &fprog);
  if (tests[which].aux & FLAG_EXPECTED_FAIL) {
   if (*err == tests[which].expected_errcode) {
    pr_cont("PASS\n");

    *err = 0;
    return ((void*)0);
   } else {
    pr_cont("UNEXPECTED_PASS\n");



    *err = -EINVAL;
    return ((void*)0);
   }
  }
  if (*err) {
   pr_cont("FAIL to prog_create err=%d len=%d\n",
    *err, fprog.len);
   return ((void*)0);
  }
  break;

 case 128:
  fp = bpf_prog_alloc(bpf_prog_size(flen), 0);
  if (fp == ((void*)0)) {
   pr_cont("UNEXPECTED_FAIL no memory left\n");
   *err = -ENOMEM;
   return ((void*)0);
  }

  fp->len = flen;

  fp->type = BPF_PROG_TYPE_SOCKET_FILTER;
  memcpy(fp->insnsi, fptr, fp->len * sizeof(struct bpf_insn));
  fp->aux->stack_depth = tests[which].stack_depth;




  fp = bpf_prog_select_runtime(fp, err);
  if (*err) {
   pr_cont("FAIL to select_runtime err=%d\n", *err);
   return ((void*)0);
  }
  break;
 }

 *err = 0;
 return fp;
}
