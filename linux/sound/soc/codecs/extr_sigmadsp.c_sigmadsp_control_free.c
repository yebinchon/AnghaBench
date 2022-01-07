
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {scalar_t__ private_value; } ;
struct sigmadsp_control {int * kcontrol; } ;



__attribute__((used)) static void sigmadsp_control_free(struct snd_kcontrol *kcontrol)
{
 struct sigmadsp_control *ctrl = (void *)kcontrol->private_value;

 ctrl->kcontrol = ((void*)0);
}
