
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct bpf_insn {int code; void* imm; } ;


 int BPF_DW ;
 int BPF_IMM ;
 int BPF_LD ;
 int log_err (char*,...) ;
 int memcpy (int *,char const*,size_t) ;

__attribute__((used)) static int fixup_sysctl_value(const char *buf, size_t buf_len,
         struct bpf_insn *prog, size_t insn_num)
{
 union {
  uint8_t raw[sizeof(uint64_t)];
  uint64_t num;
 } value = {};

 if (buf_len > sizeof(value)) {
  log_err("Value is too big (%zd) to use in fixup", buf_len);
  return -1;
 }
 if (prog[insn_num].code != (BPF_LD | BPF_DW | BPF_IMM)) {
  log_err("Can fixup only BPF_LD_IMM64 insns");
  return -1;
 }

 memcpy(value.raw, buf, buf_len);
 prog[insn_num].imm = (uint32_t)value.num;
 prog[insn_num + 1].imm = (uint32_t)(value.num >> 32);

 return 0;
}
