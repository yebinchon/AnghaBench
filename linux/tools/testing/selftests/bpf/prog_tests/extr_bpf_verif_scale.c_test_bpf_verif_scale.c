
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scale_test_def {char* member_0; int member_2; int fails; int attach_type; int file; int member_1; } ;
typedef int * libbpf_print_fn_t ;
struct TYPE_2__ {scalar_t__ verifier_stats; } ;


 int ARRAY_SIZE (struct scale_test_def*) ;
 int BPF_PROG_TYPE_CGROUP_SYSCTL ;
 int BPF_PROG_TYPE_LWT_SEG6LOCAL ;
 int BPF_PROG_TYPE_RAW_TRACEPOINT ;
 int BPF_PROG_TYPE_SCHED_CLS ;
 int BPF_PROG_TYPE_XDP ;
 int CHECK_FAIL (int) ;
 int check_load (int ,int ) ;
 TYPE_1__ env ;
 int * libbpf_debug_print ;
 int * libbpf_set_print (int *) ;
 int test__force_log () ;
 int test__start_subtest (int ) ;

void test_bpf_verif_scale(void)
{
 struct scale_test_def tests[] = {
  { "loop3.o", BPF_PROG_TYPE_RAW_TRACEPOINT, 1 },

  { "test_verif_scale1.o", BPF_PROG_TYPE_SCHED_CLS },
  { "test_verif_scale2.o", BPF_PROG_TYPE_SCHED_CLS },
  { "test_verif_scale3.o", BPF_PROG_TYPE_SCHED_CLS },


  { "pyperf50.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
  { "pyperf100.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
  { "pyperf180.o", BPF_PROG_TYPE_RAW_TRACEPOINT },







  { "pyperf600.o", BPF_PROG_TYPE_RAW_TRACEPOINT },







  { "pyperf600_nounroll.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

  { "loop1.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
  { "loop2.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
  { "loop4.o", BPF_PROG_TYPE_SCHED_CLS },
  { "loop5.o", BPF_PROG_TYPE_SCHED_CLS },





  { "strobemeta.o", BPF_PROG_TYPE_RAW_TRACEPOINT },


  { "strobemeta_nounroll1.o", BPF_PROG_TYPE_RAW_TRACEPOINT },
  { "strobemeta_nounroll2.o", BPF_PROG_TYPE_RAW_TRACEPOINT },

  { "test_sysctl_loop1.o", BPF_PROG_TYPE_CGROUP_SYSCTL },
  { "test_sysctl_loop2.o", BPF_PROG_TYPE_CGROUP_SYSCTL },

  { "test_xdp_loop.o", BPF_PROG_TYPE_XDP },
  { "test_seg6_loop.o", BPF_PROG_TYPE_LWT_SEG6LOCAL },
 };
 libbpf_print_fn_t old_print_fn = ((void*)0);
 int err, i;

 if (env.verifier_stats) {
  test__force_log();
  old_print_fn = libbpf_set_print(libbpf_debug_print);
 }

 for (i = 0; i < ARRAY_SIZE(tests); i++) {
  const struct scale_test_def *test = &tests[i];

  if (!test__start_subtest(test->file))
   continue;

  err = check_load(test->file, test->attach_type);
  CHECK_FAIL(err && !test->fails);
 }

 if (env.verifier_stats)
  libbpf_set_print(old_print_fn);
}
