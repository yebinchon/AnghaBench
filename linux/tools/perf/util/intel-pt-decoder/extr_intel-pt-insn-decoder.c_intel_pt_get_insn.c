
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_insn {int buf; } ;
struct insn {size_t length; } ;


 size_t INTEL_PT_INSN_BUF_SZ ;
 int insn_complete (struct insn*) ;
 int insn_get_length (struct insn*) ;
 int insn_init (struct insn*,unsigned char const*,size_t,int) ;
 int intel_pt_insn_decoder (struct insn*,struct intel_pt_insn*) ;
 int memcpy (int ,unsigned char const*,size_t) ;

int intel_pt_get_insn(const unsigned char *buf, size_t len, int x86_64,
        struct intel_pt_insn *intel_pt_insn)
{
 struct insn insn;

 insn_init(&insn, buf, len, x86_64);
 insn_get_length(&insn);
 if (!insn_complete(&insn) || insn.length > len)
  return -1;
 intel_pt_insn_decoder(&insn, intel_pt_insn);
 if (insn.length < INTEL_PT_INSN_BUF_SZ)
  memcpy(intel_pt_insn->buf, buf, insn.length);
 else
  memcpy(intel_pt_insn->buf, buf, INTEL_PT_INSN_BUF_SZ);
 return 0;
}
