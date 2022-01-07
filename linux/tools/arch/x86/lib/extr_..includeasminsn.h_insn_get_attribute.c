
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int dummy; } ;


 int insn_get_modrm (struct insn*) ;

__attribute__((used)) static inline void insn_get_attribute(struct insn *insn)
{
 insn_get_modrm(insn);
}
