
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct snd_bebob {int unit; } ;
typedef int __be32 ;


 scalar_t__ SAFFIRE_ADDRESS_BASE ;
 int TCODE_READ_BLOCK_REQUEST ;
 int be32_to_cpu (int ) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,unsigned int,int ) ;

__attribute__((used)) static inline int
saffire_read_block(struct snd_bebob *bebob, u64 offset,
     u32 *buf, unsigned int size)
{
 unsigned int i;
 int err;
 __be32 *tmp = (__be32 *)buf;

 err = snd_fw_transaction(bebob->unit, TCODE_READ_BLOCK_REQUEST,
      SAFFIRE_ADDRESS_BASE + offset,
      tmp, size, 0);
 if (err < 0)
  goto end;

 for (i = 0; i < size / sizeof(u32); i++)
  buf[i] = be32_to_cpu(tmp[i]);
end:
 return err;
}
