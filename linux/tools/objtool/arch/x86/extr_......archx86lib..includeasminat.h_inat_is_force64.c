
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int insn_attr_t ;


 int INAT_FORCE64 ;

__attribute__((used)) static inline int inat_is_force64(insn_attr_t attr)
{
 return attr & INAT_FORCE64;
}
