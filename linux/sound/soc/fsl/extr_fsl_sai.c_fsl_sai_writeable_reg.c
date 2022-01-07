
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_sai {TYPE_1__* soc_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int reg_offset; } ;


 unsigned int FSL_SAI_RCR5 (unsigned int) ;
 unsigned int FSL_SAI_RCSR (unsigned int) ;

 unsigned int FSL_SAI_TCR5 (unsigned int) ;
 unsigned int FSL_SAI_TCSR (unsigned int) ;
 struct fsl_sai* dev_get_drvdata (struct device*) ;

__attribute__((used)) static bool fsl_sai_writeable_reg(struct device *dev, unsigned int reg)
{
 struct fsl_sai *sai = dev_get_drvdata(dev);
 unsigned int ofs = sai->soc_data->reg_offset;

 if (reg >= FSL_SAI_TCSR(ofs) && reg <= FSL_SAI_TCR5(ofs))
  return 1;

 if (reg >= FSL_SAI_RCSR(ofs) && reg <= FSL_SAI_RCR5(ofs))
  return 1;

 switch (reg) {
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 137:
  return 1;
 default:
  return 0;
 }
}
