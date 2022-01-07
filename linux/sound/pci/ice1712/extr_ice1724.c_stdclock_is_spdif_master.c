
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int RATE ;
 int VT1724_SPDIF_MASTER ;
 int inb (int ) ;

__attribute__((used)) static inline int stdclock_is_spdif_master(struct snd_ice1712 *ice)
{
 return (inb(ICEMT1724(ice, RATE)) & VT1724_SPDIF_MASTER) ? 1 : 0;
}
