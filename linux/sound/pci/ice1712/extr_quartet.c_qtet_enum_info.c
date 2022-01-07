
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {size_t private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct qtet_kcontrol_private {int texts; } ;


 int ARRAY_SIZE (int ) ;
 struct qtet_kcontrol_private* qtet_privates ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;

__attribute__((used)) static int qtet_enum_info(struct snd_kcontrol *kcontrol,
  struct snd_ctl_elem_info *uinfo)
{
 struct qtet_kcontrol_private private =
  qtet_privates[kcontrol->private_value];
 return snd_ctl_enum_info(uinfo, 1, ARRAY_SIZE(private.texts),
     private.texts);
}
