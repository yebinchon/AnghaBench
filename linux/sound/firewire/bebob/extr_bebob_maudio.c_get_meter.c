
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_bebob {int unit; } ;


 scalar_t__ MAUDIO_SPECIFIC_ADDRESS ;
 scalar_t__ METER_OFFSET ;
 int TCODE_READ_BLOCK_REQUEST ;
 int snd_fw_transaction (int ,int ,scalar_t__,void*,unsigned int,int ) ;

__attribute__((used)) static inline int
get_meter(struct snd_bebob *bebob, void *buf, unsigned int size)
{
 return snd_fw_transaction(bebob->unit, TCODE_READ_BLOCK_REQUEST,
      MAUDIO_SPECIFIC_ADDRESS + METER_OFFSET,
      buf, size, 0);
}
