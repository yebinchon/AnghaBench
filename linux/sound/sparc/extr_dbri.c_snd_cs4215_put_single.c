
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_6__ {int* data; int* ctrl; } ;
struct snd_dbri {TYPE_3__ mm; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int D_GEN ;
 int EINVAL ;
 int cs4215_setdata (struct snd_dbri*,int) ;
 int dprintk (int ,char*,int,int,int,unsigned short) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct snd_dbri* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int udelay (int) ;

__attribute__((used)) static int snd_cs4215_put_single(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_dbri *dbri = snd_kcontrol_chip(kcontrol);
 int elem = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;
 int invert = (kcontrol->private_value >> 24) & 1;
 int changed = 0;
 unsigned short val;

 if (snd_BUG_ON(!dbri))
  return -EINVAL;

 val = (ucontrol->value.integer.value[0] & mask);
 if (invert == 1)
  val = mask - val;
 val <<= shift;

 if (elem < 4) {
  dbri->mm.data[elem] = (dbri->mm.data[elem] &
           ~(mask << shift)) | val;
  changed = (val != dbri->mm.data[elem]);
 } else {
  dbri->mm.ctrl[elem - 4] = (dbri->mm.ctrl[elem - 4] &
        ~(mask << shift)) | val;
  changed = (val != dbri->mm.ctrl[elem - 4]);
 }

 dprintk(D_GEN, "put_single: mask=0x%x, changed=%d, "
  "mixer-value=%ld, mm-value=0x%x\n",
  mask, changed, ucontrol->value.integer.value[0],
  dbri->mm.data[elem & 3]);

 if (changed) {



  cs4215_setdata(dbri, 1);
  udelay(125);
  cs4215_setdata(dbri, 0);
 }
 return changed;
}
