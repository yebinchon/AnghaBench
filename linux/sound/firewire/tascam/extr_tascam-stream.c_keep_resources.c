
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_tscm {int unit; struct fw_iso_resources rx_resources; struct fw_iso_resources tx_resources; struct amdtp_stream tx_stream; } ;
struct TYPE_2__ {int max_speed; } ;


 int amdtp_stream_get_max_payload (struct amdtp_stream*) ;
 int amdtp_tscm_set_parameters (struct amdtp_stream*,unsigned int) ;
 int fw_iso_resources_allocate (struct fw_iso_resources*,int ,int ) ;
 TYPE_1__* fw_parent_device (int ) ;

__attribute__((used)) static int keep_resources(struct snd_tscm *tscm, unsigned int rate,
     struct amdtp_stream *stream)
{
 struct fw_iso_resources *resources;
 int err;

 if (stream == &tscm->tx_stream)
  resources = &tscm->tx_resources;
 else
  resources = &tscm->rx_resources;

 err = amdtp_tscm_set_parameters(stream, rate);
 if (err < 0)
  return err;

 return fw_iso_resources_allocate(resources,
    amdtp_stream_get_max_payload(stream),
    fw_parent_device(tscm->unit)->max_speed);
}
