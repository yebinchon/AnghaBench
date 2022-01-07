
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn_cbs {char const* (* cb_call ) (int ,struct bpf_insn const*) ;int private_data; } ;
struct bpf_insn {scalar_t__ src_reg; scalar_t__ imm; } ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 scalar_t__ BPF_PSEUDO_CALL ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ __BPF_FUNC_MAX_ID ;
 char const** func_id_str ;
 int snprintf (char*,size_t,char*,size_t) ;
 char const* stub1 (int ,struct bpf_insn const*) ;

__attribute__((used)) static const char *__func_get_name(const struct bpf_insn_cbs *cbs,
       const struct bpf_insn *insn,
       char *buff, size_t len)
{
 BUILD_BUG_ON(ARRAY_SIZE(func_id_str) != __BPF_FUNC_MAX_ID);

 if (insn->src_reg != BPF_PSEUDO_CALL &&
     insn->imm >= 0 && insn->imm < __BPF_FUNC_MAX_ID &&
     func_id_str[insn->imm])
  return func_id_str[insn->imm];

 if (cbs && cbs->cb_call)
  return cbs->cb_call(cbs->private_data, insn);

 if (insn->src_reg == BPF_PSEUDO_CALL)
  snprintf(buff, len, "%+d", insn->imm);

 return buff;
}
