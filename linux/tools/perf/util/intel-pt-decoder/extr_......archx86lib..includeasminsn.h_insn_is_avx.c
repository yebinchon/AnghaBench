
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {int got; } ;
struct insn {TYPE_2__ vex_prefix; TYPE_1__ prefixes; } ;


 int insn_get_prefixes (struct insn*) ;

__attribute__((used)) static inline int insn_is_avx(struct insn *insn)
{
 if (!insn->prefixes.got)
  insn_get_prefixes(insn);
 return (insn->vex_prefix.value != 0);
}
