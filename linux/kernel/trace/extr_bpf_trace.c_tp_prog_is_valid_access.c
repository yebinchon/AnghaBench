
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog {int dummy; } ;
struct bpf_insn_access_aux {int dummy; } ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;
typedef int __u64 ;


 int BPF_READ ;
 int BUILD_BUG_ON (int) ;
 int PERF_MAX_TRACE_SIZE ;

__attribute__((used)) static bool tp_prog_is_valid_access(int off, int size, enum bpf_access_type type,
        const struct bpf_prog *prog,
        struct bpf_insn_access_aux *info)
{
 if (off < sizeof(void *) || off >= PERF_MAX_TRACE_SIZE)
  return 0;
 if (type != BPF_READ)
  return 0;
 if (off % size != 0)
  return 0;

 BUILD_BUG_ON(PERF_MAX_TRACE_SIZE % sizeof(__u64));
 return 1;
}
