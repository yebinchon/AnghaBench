
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bpf_prog {int dummy; } ;
struct bpf_insn_access_aux {int reg_type; } ;
typedef enum bpf_access_type { ____Placeholder_bpf_access_type } bpf_access_type ;


 int BPF_READ ;
 int PTR_TO_TP_BUFFER ;
 int raw_tp_prog_is_valid_access (int,int,int,struct bpf_prog const*,struct bpf_insn_access_aux*) ;

__attribute__((used)) static bool raw_tp_writable_prog_is_valid_access(int off, int size,
       enum bpf_access_type type,
       const struct bpf_prog *prog,
       struct bpf_insn_access_aux *info)
{
 if (off == 0) {
  if (size != sizeof(u64) || type != BPF_READ)
   return 0;
  info->reg_type = PTR_TO_TP_BUFFER;
 }
 return raw_tp_prog_is_valid_access(off, size, type, prog, info);
}
