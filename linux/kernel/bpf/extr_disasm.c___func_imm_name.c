
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct bpf_insn_cbs {char const* (* cb_imm ) (int ,struct bpf_insn const*,scalar_t__) ;int private_data; } ;
struct bpf_insn {int dummy; } ;


 int snprintf (char*,size_t,char*,unsigned long long) ;
 char const* stub1 (int ,struct bpf_insn const*,scalar_t__) ;

__attribute__((used)) static const char *__func_imm_name(const struct bpf_insn_cbs *cbs,
       const struct bpf_insn *insn,
       u64 full_imm, char *buff, size_t len)
{
 if (cbs && cbs->cb_imm)
  return cbs->cb_imm(cbs->private_data, insn, full_imm);

 snprintf(buff, len, "0x%llx", (unsigned long long)full_imm);
 return buff;
}
