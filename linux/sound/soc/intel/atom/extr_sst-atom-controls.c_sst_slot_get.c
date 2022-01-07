
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct sst_enum {unsigned int reg; unsigned int tx; unsigned int max; int * texts; } ;
struct sst_data {int lock; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int dev_dbg (int ,char*,char*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct sst_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int* sst_ssp_rx_map ;
 unsigned int* sst_ssp_tx_map ;

__attribute__((used)) static int sst_slot_get(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct sst_enum *e = (void *)kcontrol->private_value;
 struct snd_soc_component *c = snd_kcontrol_chip(kcontrol);
 struct sst_data *drv = snd_soc_component_get_drvdata(c);
 unsigned int ctl_no = e->reg;
 unsigned int is_tx = e->tx;
 unsigned int val, mux;
 u8 *map = is_tx ? sst_ssp_rx_map : sst_ssp_tx_map;

 mutex_lock(&drv->lock);
 val = 1 << ctl_no;

 for (mux = e->max; mux > 0; mux--)
  if (map[mux - 1] & val)
   break;

 ucontrol->value.enumerated.item[0] = mux;
 mutex_unlock(&drv->lock);

 dev_dbg(c->dev, "%s - %s map = %#x\n",
   is_tx ? "tx channel" : "rx slot",
    e->texts[mux], mux ? map[mux - 1] : -1);
 return 0;
}
