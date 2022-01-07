
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdspm {int settings_register; } ;



__attribute__((used)) static int hdspm_tristate(struct hdspm *hdspm, u32 regmask)
{
 u32 reg = hdspm->settings_register & (regmask * 3);
 return reg / regmask;
}
