
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int CPLD_SYNC_SEL ;
 int get_cpld (struct snd_ice1712*) ;

__attribute__((used)) static inline int qtet_is_spdif_master(struct snd_ice1712 *ice)
{

 return (get_cpld(ice) & CPLD_SYNC_SEL) ? 1 : 0;
}
