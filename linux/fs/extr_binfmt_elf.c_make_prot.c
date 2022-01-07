
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;

__attribute__((used)) static inline int make_prot(u32 p_flags)
{
 int prot = 0;

 if (p_flags & PF_R)
  prot |= PROT_READ;
 if (p_flags & PF_W)
  prot |= PROT_WRITE;
 if (p_flags & PF_X)
  prot |= PROT_EXEC;
 return prot;
}
