
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int dummy; } ;


 unsigned long long KVM_EMUL_INSN_F_CR0_PE ;
 unsigned long long KVM_EMUL_INSN_F_CS_D ;
 unsigned long long KVM_EMUL_INSN_F_CS_L ;
 unsigned long long KVM_EMUL_INSN_F_EFL_VM ;
 char* disassemble (int *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int * tep_get_field_raw (struct trace_seq*,struct tep_event*,char*,struct tep_record*,int*,int) ;
 scalar_t__ tep_get_field_val (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned long long,unsigned long long,char const*,char*) ;

__attribute__((used)) static int kvm_emulate_insn_handler(struct trace_seq *s,
        struct tep_record *record,
        struct tep_event *event, void *context)
{
 unsigned long long rip, csbase, len, flags, failed;
 int llen;
 uint8_t *insn;
 const char *disasm;

 if (tep_get_field_val(s, event, "rip", record, &rip, 1) < 0)
  return -1;

 if (tep_get_field_val(s, event, "csbase", record, &csbase, 1) < 0)
  return -1;

 if (tep_get_field_val(s, event, "len", record, &len, 1) < 0)
  return -1;

 if (tep_get_field_val(s, event, "flags", record, &flags, 1) < 0)
  return -1;

 if (tep_get_field_val(s, event, "failed", record, &failed, 1) < 0)
  return -1;

 insn = tep_get_field_raw(s, event, "insn", record, &llen, 1);
 if (!insn)
  return -1;

 disasm = disassemble(insn, len, rip,
        flags & KVM_EMUL_INSN_F_CR0_PE,
        flags & KVM_EMUL_INSN_F_EFL_VM,
        flags & KVM_EMUL_INSN_F_CS_D,
        flags & KVM_EMUL_INSN_F_CS_L);

 trace_seq_printf(s, "%llx:%llx: %s%s", csbase, rip, disasm,
    failed ? " FAIL" : "");
 return 0;
}
