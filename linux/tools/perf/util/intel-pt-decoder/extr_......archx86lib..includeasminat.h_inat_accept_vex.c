
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_attr_t ;


 int INAT_VEXOK ;

__attribute__((used)) static inline int inat_accept_vex(insn_attr_t attr)
{
 return attr & INAT_VEXOK;
}
