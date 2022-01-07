
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mtk_btcvsd_snd {int rx; int tx; } ;


 int BT_SCO_STATE_LOOPBACK ;
 int BT_SCO_STATE_RUNNING ;
 int mtk_btcvsd_snd_set_state (struct mtk_btcvsd_snd*,int ,int ) ;
 struct mtk_btcvsd_snd* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int btcvsd_loopback_set(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *cmpnt = snd_soc_kcontrol_component(kcontrol);
 struct mtk_btcvsd_snd *bt = snd_soc_component_get_drvdata(cmpnt);

 if (ucontrol->value.integer.value[0]) {
  mtk_btcvsd_snd_set_state(bt, bt->tx, BT_SCO_STATE_LOOPBACK);
  mtk_btcvsd_snd_set_state(bt, bt->rx, BT_SCO_STATE_LOOPBACK);
 } else {
  mtk_btcvsd_snd_set_state(bt, bt->tx, BT_SCO_STATE_RUNNING);
  mtk_btcvsd_snd_set_state(bt, bt->rx, BT_SCO_STATE_RUNNING);
 }
 return 0;
}
