
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int dummy; } ;
typedef int reg ;
typedef enum snd_motu_clock_source { ____Placeholder_snd_motu_clock_source } snd_motu_clock_source ;
typedef int __be32 ;


 int EIO ;
 int SND_MOTU_CLOCK_SOURCE_ADAT_ON_DSUB ;
 int SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT ;
 int SND_MOTU_CLOCK_SOURCE_INTERNAL ;
 int SND_MOTU_CLOCK_SOURCE_SPDIF_ON_COAX ;
 int SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT ;
 int SND_MOTU_CLOCK_SOURCE_WORD_ON_BNC ;
 int V2_CLOCK_SRC_MASK ;
 int V2_CLOCK_STATUS_OFFSET ;
 int V2_IN_OUT_CONF_OFFSET ;
 int be32_to_cpu (int ) ;
 int snd_motu_transaction_read (struct snd_motu*,int ,int *,int) ;

__attribute__((used)) static int v2_get_clock_source(struct snd_motu *motu,
          enum snd_motu_clock_source *src)
{
 __be32 reg;
 unsigned int index;
 int err;

 err = snd_motu_transaction_read(motu, V2_CLOCK_STATUS_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;

 index = be32_to_cpu(reg) & V2_CLOCK_SRC_MASK;
 if (index > 5)
  return -EIO;


 err = snd_motu_transaction_read(motu, V2_IN_OUT_CONF_OFFSET, &reg,
     sizeof(reg));
 if (err < 0)
  return err;

 switch (index) {
 case 0:
  *src = SND_MOTU_CLOCK_SOURCE_INTERNAL;
  break;
 case 1:
  if (be32_to_cpu(reg) & 0x00000200)
   *src = SND_MOTU_CLOCK_SOURCE_SPDIF_ON_OPT;
  else
   *src = SND_MOTU_CLOCK_SOURCE_ADAT_ON_OPT;
  break;
 case 2:
  *src = SND_MOTU_CLOCK_SOURCE_SPDIF_ON_COAX;
  break;
 case 4:
  *src = SND_MOTU_CLOCK_SOURCE_WORD_ON_BNC;
  break;
 case 5:
  *src = SND_MOTU_CLOCK_SOURCE_ADAT_ON_DSUB;
  break;
 default:
  return -EIO;
 }

 return 0;
}
