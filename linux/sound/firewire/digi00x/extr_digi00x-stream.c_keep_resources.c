
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_dg00x {int unit; struct fw_iso_resources rx_resources; struct fw_iso_resources tx_resources; struct amdtp_stream tx_stream; } ;
struct TYPE_2__ {int max_speed; } ;


 int EINVAL ;
 int SND_DG00X_RATE_COUNT ;
 int amdtp_dot_set_parameters (struct amdtp_stream*,unsigned int,int ) ;
 int amdtp_stream_get_max_payload (struct amdtp_stream*) ;
 int fw_iso_resources_allocate (struct fw_iso_resources*,int ,int ) ;
 TYPE_1__* fw_parent_device (int ) ;
 int * snd_dg00x_stream_pcm_channels ;
 unsigned int* snd_dg00x_stream_rates ;

__attribute__((used)) static int keep_resources(struct snd_dg00x *dg00x, struct amdtp_stream *stream,
     unsigned int rate)
{
 struct fw_iso_resources *resources;
 int i;
 int err;


 for (i = 0; i < SND_DG00X_RATE_COUNT; i++) {
  if (snd_dg00x_stream_rates[i] == rate)
   break;
 }
 if (i == SND_DG00X_RATE_COUNT)
  return -EINVAL;

 if (stream == &dg00x->tx_stream)
  resources = &dg00x->tx_resources;
 else
  resources = &dg00x->rx_resources;

 err = amdtp_dot_set_parameters(stream, rate,
           snd_dg00x_stream_pcm_channels[i]);
 if (err < 0)
  return err;

 return fw_iso_resources_allocate(resources,
    amdtp_stream_get_max_payload(stream),
    fw_parent_device(dg00x->unit)->max_speed);
}
