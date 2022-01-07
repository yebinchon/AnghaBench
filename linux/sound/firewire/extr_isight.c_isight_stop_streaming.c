
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isight {scalar_t__ audio_base; int unit; int resources; int * context; } ;
typedef scalar_t__ __be32 ;


 int FW_QUIET ;
 scalar_t__ REG_AUDIO_ENABLE ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int fw_iso_context_destroy (int *) ;
 int fw_iso_context_stop (int *) ;
 int fw_iso_resources_free (int *) ;
 int snd_fw_transaction (int ,int ,scalar_t__,scalar_t__*,int,int ) ;

__attribute__((used)) static void isight_stop_streaming(struct isight *isight)
{
 __be32 value;

 if (!isight->context)
  return;

 fw_iso_context_stop(isight->context);
 fw_iso_context_destroy(isight->context);
 isight->context = ((void*)0);
 fw_iso_resources_free(&isight->resources);
 value = 0;
 snd_fw_transaction(isight->unit, TCODE_WRITE_QUADLET_REQUEST,
      isight->audio_base + REG_AUDIO_ENABLE,
      &value, 4, FW_QUIET);
}
