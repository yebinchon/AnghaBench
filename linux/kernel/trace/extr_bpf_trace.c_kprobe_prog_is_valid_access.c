
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct bpf_insn_access_aux {int dummy; } ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;


 int BPF_READ ;

__attribute__((used)) static bool kprobe_prog_is_valid_access(int off, int size, enum bpf_access_type type,
     const struct bpf_prog *prog,
     struct bpf_insn_access_aux *info)
{
 if (off < 0 || off >= sizeof(struct pt_regs))
  return 0;
 if (type != BPF_READ)
  return 0;
 if (off % size != 0)
  return 0;




 if (off + size > sizeof(struct pt_regs))
  return 0;

 return 1;
}
