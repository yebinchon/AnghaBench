
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_oxfw_stream_formation {unsigned int rate; unsigned int pcm; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {scalar_t__ substreams_count; int in_conn; struct amdtp_stream tx_stream; scalar_t__ has_output; struct amdtp_stream rx_stream; TYPE_1__* unit; int out_conn; int domain; } ;
typedef enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;
struct TYPE_2__ {int device; } ;


 int AVC_GENERAL_PLUG_DIR_IN ;
 int AVC_GENERAL_PLUG_DIR_OUT ;
 int amdtp_domain_stop (int *) ;
 int check_connection_used_by_others (struct snd_oxfw*,struct amdtp_stream*) ;
 int cmp_connection_break (int *) ;
 int cmp_connection_release (int *) ;
 int dev_err (int *,char*,int) ;
 int keep_resources (struct snd_oxfw*,struct amdtp_stream*) ;
 int set_stream_format (struct snd_oxfw*,struct amdtp_stream*,unsigned int,unsigned int) ;
 int snd_oxfw_stream_get_current_formation (struct snd_oxfw*,int,struct snd_oxfw_stream_formation*) ;

int snd_oxfw_stream_reserve_duplex(struct snd_oxfw *oxfw,
       struct amdtp_stream *stream,
       unsigned int rate, unsigned int pcm_channels)
{
 struct snd_oxfw_stream_formation formation;
 enum avc_general_plug_dir dir;
 int err;



 err = check_connection_used_by_others(oxfw, &oxfw->rx_stream);
 if (err < 0)
  return err;
 if (oxfw->has_output) {
  err = check_connection_used_by_others(oxfw, &oxfw->tx_stream);
  if (err < 0)
   return err;
 }

 if (stream == &oxfw->tx_stream)
  dir = AVC_GENERAL_PLUG_DIR_OUT;
 else
  dir = AVC_GENERAL_PLUG_DIR_IN;

 err = snd_oxfw_stream_get_current_formation(oxfw, dir, &formation);
 if (err < 0)
  return err;
 if (rate == 0) {
  rate = formation.rate;
  pcm_channels = formation.pcm;
 }
 if (formation.rate != rate || formation.pcm != pcm_channels) {
  amdtp_domain_stop(&oxfw->domain);

  cmp_connection_break(&oxfw->in_conn);
  cmp_connection_release(&oxfw->in_conn);

  if (oxfw->has_output) {
   cmp_connection_break(&oxfw->out_conn);
   cmp_connection_release(&oxfw->out_conn);
  }
 }

 if (oxfw->substreams_count == 0 ||
     formation.rate != rate || formation.pcm != pcm_channels) {
  err = set_stream_format(oxfw, stream, rate, pcm_channels);
  if (err < 0) {
   dev_err(&oxfw->unit->device,
    "fail to set stream format: %d\n", err);
   return err;
  }

  err = keep_resources(oxfw, &oxfw->rx_stream);
  if (err < 0)
   return err;

  if (oxfw->has_output) {
   err = keep_resources(oxfw, &oxfw->tx_stream);
   if (err < 0) {
    cmp_connection_release(&oxfw->in_conn);
    return err;
   }
  }
 }

 return 0;
}
