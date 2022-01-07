
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int private_value; int name; } ;


 int AC97_CD ;
 int AC97_VIDEO ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int xonar_d2_control_filter(struct snd_kcontrol_new *template)
{
 if (!strncmp(template->name, "CD Capture ", 11))

  template->private_value ^= AC97_CD ^ AC97_VIDEO;
 return 0;
}
