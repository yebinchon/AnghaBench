
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {int dummy; } ;


 int snd_aci_cmd (struct snd_miro_aci*,unsigned char,int,int) ;

__attribute__((used)) static int aci_setvalue(struct snd_miro_aci *aci, unsigned char index,
   int value)
{
 return snd_aci_cmd(aci, index, value, -1);
}
