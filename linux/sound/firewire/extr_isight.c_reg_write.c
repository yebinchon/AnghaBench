
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isight {scalar_t__ audio_base; int unit; } ;
typedef int __be32 ;


 int TCODE_WRITE_QUADLET_REQUEST ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static int reg_write(struct isight *isight, int offset, __be32 value)
{
 return snd_fw_transaction(isight->unit, TCODE_WRITE_QUADLET_REQUEST,
      isight->audio_base + offset, &value, 4, 0);
}
