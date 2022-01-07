
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AA_EXEC_MMAP ;
 int AA_LINK_SUBSET ;
 int AA_MAY_CHMOD ;
 int AA_MAY_CHOWN ;
 int AA_MAY_CREATE ;
 int AA_MAY_DELETE ;
 int AA_MAY_GETATTR ;
 int AA_MAY_LINK ;
 int AA_MAY_LOCK ;
 int AA_MAY_OPEN ;
 int AA_MAY_SETATTR ;
 int MAY_READ ;
 int MAY_WRITE ;

__attribute__((used)) static u32 map_old_perms(u32 old)
{
 u32 new = old & 0xf;
 if (old & MAY_READ)
  new |= AA_MAY_GETATTR | AA_MAY_OPEN;
 if (old & MAY_WRITE)
  new |= AA_MAY_SETATTR | AA_MAY_CREATE | AA_MAY_DELETE |
         AA_MAY_CHMOD | AA_MAY_CHOWN | AA_MAY_OPEN;
 if (old & 0x10)
  new |= AA_MAY_LINK;



 if (old & 0x20)
  new |= AA_MAY_LOCK | AA_LINK_SUBSET;
 if (old & 0x40)
  new |= AA_EXEC_MMAP;

 return new;
}
