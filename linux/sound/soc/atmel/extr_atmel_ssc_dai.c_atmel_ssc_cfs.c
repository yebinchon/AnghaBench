
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_ssc_info {int daifmt; } ;




 int SND_SOC_DAIFMT_MASTER_MASK ;

__attribute__((used)) static int atmel_ssc_cfs(struct atmel_ssc_info *ssc_p)
{
 switch (ssc_p->daifmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:
 case 128:
  return 1;
 }
 return 0;
}
