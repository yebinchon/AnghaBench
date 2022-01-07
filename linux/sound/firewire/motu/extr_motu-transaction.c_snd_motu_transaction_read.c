
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_motu {int unit; } ;
typedef int __be32 ;


 int EINVAL ;
 scalar_t__ SND_MOTU_ADDR_BASE ;
 int TCODE_READ_BLOCK_REQUEST ;
 int TCODE_READ_QUADLET_REQUEST ;
 int snd_fw_transaction (int ,int,scalar_t__,int *,size_t,int ) ;

int snd_motu_transaction_read(struct snd_motu *motu, u32 offset, __be32 *reg,
         size_t size)
{
 int tcode;

 if (size % sizeof(__be32) > 0 || size <= 0)
  return -EINVAL;
 if (size == sizeof(__be32))
  tcode = TCODE_READ_QUADLET_REQUEST;
 else
  tcode = TCODE_READ_BLOCK_REQUEST;

 return snd_fw_transaction(motu->unit, tcode,
      SND_MOTU_ADDR_BASE + offset, reg, size, 0);
}
