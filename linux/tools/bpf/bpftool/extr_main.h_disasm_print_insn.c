
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int dummy; } ;
struct bpf_prog_linfo {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;



__attribute__((used)) static inline
void disasm_print_insn(unsigned char *image, ssize_t len, int opcodes,
         const char *arch, const char *disassembler_options,
         const struct btf *btf,
         const struct bpf_prog_linfo *prog_linfo,
         __u64 func_ksym, unsigned int func_idx,
         bool linum)
{
}
