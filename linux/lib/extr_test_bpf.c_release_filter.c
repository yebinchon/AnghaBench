
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_prog {int dummy; } ;
typedef int __u8 ;
struct TYPE_2__ {int aux; } ;




 int TEST_TYPE_MASK ;
 int bpf_prog_destroy (struct bpf_prog*) ;
 int bpf_prog_free (struct bpf_prog*) ;
 TYPE_1__* tests ;

__attribute__((used)) static void release_filter(struct bpf_prog *fp, int which)
{
 __u8 test_type = tests[which].aux & TEST_TYPE_MASK;

 switch (test_type) {
 case 129:
  bpf_prog_destroy(fp);
  break;
 case 128:
  bpf_prog_free(fp);
  break;
 }
}
