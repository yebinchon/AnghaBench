
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMK_CIPSOLEN ;

__attribute__((used)) static inline void smack_catset_bit(unsigned int cat, char *catsetp)
{
 if (cat == 0 || cat > (SMK_CIPSOLEN * 8))
  return;

 catsetp[(cat - 1) / 8] |= 0x80 >> ((cat - 1) % 8);
}
