
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct fw_unit {int dummy; } ;


 scalar_t__ BEBOB_ADDR_REG_INFO ;
 int TCODE_READ_BLOCK_REQUEST ;
 int snd_fw_transaction (struct fw_unit*,int ,scalar_t__,void*,int,int ) ;

__attribute__((used)) static inline int
snd_bebob_read_block(struct fw_unit *unit, u64 addr, void *buf, int size)
{
 return snd_fw_transaction(unit, TCODE_READ_BLOCK_REQUEST,
      BEBOB_ADDR_REG_INFO + addr,
      buf, size, 0);
}
