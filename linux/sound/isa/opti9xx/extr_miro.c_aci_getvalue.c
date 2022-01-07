
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {int dummy; } ;


 int ACI_STATUS ;
 int snd_aci_cmd (struct snd_miro_aci*,int ,unsigned char,int) ;

__attribute__((used)) static int aci_getvalue(struct snd_miro_aci *aci, unsigned char index)
{
 return snd_aci_cmd(aci, ACI_STATUS, index, -1);
}
