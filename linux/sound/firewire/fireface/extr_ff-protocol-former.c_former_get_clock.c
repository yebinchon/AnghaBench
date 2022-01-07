
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_ff {int unit; } ;
typedef int reg ;
typedef enum snd_ff_clock_src { ____Placeholder_snd_ff_clock_src } snd_ff_clock_src ;
typedef int __le32 ;


 int FORMER_REG_CLOCK_CONFIG ;
 int TCODE_READ_QUADLET_REQUEST ;
 int le32_to_cpu (int ) ;
 int parse_clock_bits (int ,unsigned int*,int*) ;
 int snd_fw_transaction (int ,int ,int ,int *,int,int ) ;

__attribute__((used)) static int former_get_clock(struct snd_ff *ff, unsigned int *rate,
       enum snd_ff_clock_src *src)
{
 __le32 reg;
 u32 data;
 int err;

 err = snd_fw_transaction(ff->unit, TCODE_READ_QUADLET_REQUEST,
     FORMER_REG_CLOCK_CONFIG, &reg, sizeof(reg), 0);
 if (err < 0)
  return err;
 data = le32_to_cpu(reg);

 return parse_clock_bits(data, rate, src);
}
