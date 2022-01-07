
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct fw_unit {int dummy; } ;


 scalar_t__ BEBOB_ADDR_REG_INFO ;
 int TCODE_READ_QUADLET_REQUEST ;
 int snd_fw_transaction (struct fw_unit*,int ,scalar_t__,void*,int,int ) ;

__attribute__((used)) static inline int
snd_bebob_read_quad(struct fw_unit *unit, u64 addr, u32 *buf)
{
 return snd_fw_transaction(unit, TCODE_READ_QUADLET_REQUEST,
      BEBOB_ADDR_REG_INFO + addr,
      (void *)buf, sizeof(u32), 0);
}
