
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICE1712_SPDIF_MASTER ;
 int ICEMT (struct snd_ice1712*,int ) ;
 int RATE ;
 int inb (int ) ;

__attribute__((used)) static inline int is_spdif_master(struct snd_ice1712 *ice)
{
 return (inb(ICEMT(ice, RATE)) & ICE1712_SPDIF_MASTER) ? 1 : 0;
}
