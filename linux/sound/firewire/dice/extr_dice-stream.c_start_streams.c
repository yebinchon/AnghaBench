
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_dice {int domain; struct fw_iso_resources* rx_resources; struct amdtp_stream* rx_stream; struct fw_iso_resources* tx_resources; struct amdtp_stream* tx_stream; int unit; } ;
struct reg_params {int count; int size; } ;
struct fw_iso_resources {unsigned int channel; } ;
struct amdtp_stream {int dummy; } ;
typedef int reg ;
typedef enum amdtp_stream_direction { ____Placeholder_amdtp_stream_direction } amdtp_stream_direction ;
typedef int __be32 ;
struct TYPE_2__ {unsigned int max_speed; } ;


 int AMDTP_IN_STREAM ;
 scalar_t__ RX_ISOCHRONOUS ;
 scalar_t__ TX_ISOCHRONOUS ;
 scalar_t__ TX_SPEED ;
 int amdtp_domain_add_stream (int *,struct amdtp_stream*,unsigned int,unsigned int) ;
 int cpu_to_be32 (unsigned int) ;
 TYPE_1__* fw_parent_device (int ) ;
 int snd_dice_transaction_write_rx (struct snd_dice*,scalar_t__,int *,int) ;
 int snd_dice_transaction_write_tx (struct snd_dice*,scalar_t__,int *,int) ;

__attribute__((used)) static int start_streams(struct snd_dice *dice, enum amdtp_stream_direction dir,
    unsigned int rate, struct reg_params *params)
{
 unsigned int max_speed = fw_parent_device(dice->unit)->max_speed;
 int i;
 int err;

 for (i = 0; i < params->count; i++) {
  struct amdtp_stream *stream;
  struct fw_iso_resources *resources;
  __be32 reg;

  if (dir == AMDTP_IN_STREAM) {
   stream = dice->tx_stream + i;
   resources = dice->tx_resources + i;
  } else {
   stream = dice->rx_stream + i;
   resources = dice->rx_resources + i;
  }

  reg = cpu_to_be32(resources->channel);
  if (dir == AMDTP_IN_STREAM) {
   err = snd_dice_transaction_write_tx(dice,
     params->size * i + TX_ISOCHRONOUS,
     &reg, sizeof(reg));
  } else {
   err = snd_dice_transaction_write_rx(dice,
     params->size * i + RX_ISOCHRONOUS,
     &reg, sizeof(reg));
  }
  if (err < 0)
   return err;

  if (dir == AMDTP_IN_STREAM) {
   reg = cpu_to_be32(max_speed);
   err = snd_dice_transaction_write_tx(dice,
     params->size * i + TX_SPEED,
     &reg, sizeof(reg));
   if (err < 0)
    return err;
  }

  err = amdtp_domain_add_stream(&dice->domain, stream,
           resources->channel, max_speed);
  if (err < 0)
   return err;
 }

 return 0;
}
