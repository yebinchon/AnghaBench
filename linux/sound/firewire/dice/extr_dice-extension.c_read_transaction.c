
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct snd_dice {int unit; } ;


 int TCODE_READ_BLOCK_REQUEST ;
 int TCODE_READ_QUADLET_REQUEST ;
 int snd_fw_transaction (int ,int ,scalar_t__,void*,size_t,int ) ;

__attribute__((used)) static inline int read_transaction(struct snd_dice *dice, u64 section_addr,
       u32 offset, void *buf, size_t len)
{
 return snd_fw_transaction(dice->unit,
      len == 4 ? TCODE_READ_QUADLET_REQUEST :
          TCODE_READ_BLOCK_REQUEST,
      section_addr + offset, buf, len, 0);
}
