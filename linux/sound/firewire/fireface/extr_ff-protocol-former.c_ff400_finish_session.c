
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ff {int unit; } ;
typedef int reg ;
typedef int __le32 ;


 int FF400_ISOC_COMM_STOP ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 int cpu_to_le32 (int) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static void ff400_finish_session(struct snd_ff *ff)
{
 __le32 reg;

 reg = cpu_to_le32(0x80000000);
 snd_fw_transaction(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
      FF400_ISOC_COMM_STOP, &reg, sizeof(reg), 0);
}
