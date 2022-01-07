
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* bytes; } ;
struct insn {TYPE_1__ prefixes; } ;


 int inat_get_last_prefix_id (scalar_t__) ;
 scalar_t__ insn_is_avx (struct insn*) ;
 int insn_vex_p_bits (struct insn*) ;

__attribute__((used)) static inline int insn_last_prefix_id(struct insn *insn)
{
 if (insn_is_avx(insn))
  return insn_vex_p_bits(insn);

 if (insn->prefixes.bytes[3])
  return inat_get_last_prefix_id(insn->prefixes.bytes[3]);

 return 0;
}
