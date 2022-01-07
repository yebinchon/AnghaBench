
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct snd_bebob {int unit; } ;
typedef int __be32 ;


 scalar_t__ SAFFIRE_ADDRESS_BASE ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_be32 (int ) ;
 int snd_fw_transaction (int ,int ,scalar_t__,int *,int,int ) ;

__attribute__((used)) static inline int
saffire_write_quad(struct snd_bebob *bebob, u64 offset, u32 value)
{
 __be32 data = cpu_to_be32(value);

 return snd_fw_transaction(bebob->unit, TCODE_WRITE_QUADLET_REQUEST,
      SAFFIRE_ADDRESS_BASE + offset,
      &data, sizeof(__be32), 0);
}
