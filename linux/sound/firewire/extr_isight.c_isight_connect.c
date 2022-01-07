
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int generation; } ;
struct isight {TYPE_2__ resources; scalar_t__ audio_base; int unit; TYPE_1__* device; } ;
struct audio_payload {int dummy; } ;
typedef int __be32 ;
struct TYPE_4__ {int max_speed; } ;


 int EAGAIN ;
 int FW_FIXED_GENERATION ;
 scalar_t__ REG_ISO_TX_CONFIG ;
 int SPEED_SHIFT ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_be32 (int) ;
 int fw_iso_resources_allocate (TYPE_2__*,int,int) ;
 int fw_iso_resources_free (TYPE_2__*) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int) ;

__attribute__((used)) static int isight_connect(struct isight *isight)
{
 int ch, err;
 __be32 value;

retry_after_bus_reset:
 ch = fw_iso_resources_allocate(&isight->resources,
           sizeof(struct audio_payload),
           isight->device->max_speed);
 if (ch < 0) {
  err = ch;
  goto error;
 }

 value = cpu_to_be32(ch | (isight->device->max_speed << SPEED_SHIFT));
 err = snd_fw_transaction(isight->unit, TCODE_WRITE_QUADLET_REQUEST,
     isight->audio_base + REG_ISO_TX_CONFIG,
     &value, 4, FW_FIXED_GENERATION |
     isight->resources.generation);
 if (err == -EAGAIN) {
  fw_iso_resources_free(&isight->resources);
  goto retry_after_bus_reset;
 } else if (err < 0) {
  goto err_resources;
 }

 return 0;

err_resources:
 fw_iso_resources_free(&isight->resources);
error:
 return err;
}
