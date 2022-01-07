
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ff {int unit; } ;
typedef int reg ;
typedef int __le32 ;


 int LATTER_FETCH_MODE ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_le32 (int) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int latter_switch_fetching_mode(struct snd_ff *ff, bool enable)
{
 u32 data;
 __le32 reg;

 if (enable)
  data = 0x00000000;
 else
  data = 0xffffffff;
 reg = cpu_to_le32(data);

 return snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
      LATTER_FETCH_MODE, &reg, sizeof(reg), 0);
}
