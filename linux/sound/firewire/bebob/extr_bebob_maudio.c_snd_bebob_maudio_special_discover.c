
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct special_params {int is1814; } ;
struct TYPE_7__ {void* context; } ;
struct TYPE_6__ {void* context; } ;
struct snd_bebob {int midi_input_ports; int midi_output_ports; int mutex; TYPE_4__* unit; TYPE_3__ tx_stream; TYPE_2__ rx_stream; void* maudio_special_quirk; TYPE_1__* card; } ;
struct TYPE_8__ {int device; } ;
struct TYPE_5__ {int card_dev; } ;


 int ENOMEM ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int add_special_controls (struct snd_bebob*) ;
 int avc_maudio_set_special_clk (struct snd_bebob*,int,int,int,int) ;
 int dev_err (int *,char*,int) ;
 struct special_params* devm_kzalloc (int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int special_stream_formation_set (struct snd_bebob*) ;

int
snd_bebob_maudio_special_discover(struct snd_bebob *bebob, bool is1814)
{
 struct special_params *params;
 int err;

 params = devm_kzalloc(&bebob->card->card_dev,
         sizeof(struct special_params), GFP_KERNEL);
 if (!params)
  return -ENOMEM;

 mutex_lock(&bebob->mutex);

 bebob->maudio_special_quirk = (void *)params;
 params->is1814 = is1814;


 bebob->rx_stream.context = ERR_PTR(-1);
 bebob->tx_stream.context = ERR_PTR(-1);
 err = avc_maudio_set_special_clk(bebob, 0x03, 0x00, 0x00, 0x00);
 if (err < 0) {
  dev_err(&bebob->unit->device,
   "fail to initialize clock params: %d\n", err);
  goto end;
 }

 err = add_special_controls(bebob);
 if (err < 0)
  goto end;

 special_stream_formation_set(bebob);

 if (params->is1814) {
  bebob->midi_input_ports = 1;
  bebob->midi_output_ports = 1;
 } else {
  bebob->midi_input_ports = 2;
  bebob->midi_output_ports = 2;
 }
end:
 mutex_unlock(&bebob->mutex);
 return err;
}
