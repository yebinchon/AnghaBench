
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dummy; } ;


 int SKL_ADSP_FW_STATUS ;
 int SKL_FW_STS_MASK ;
 int sst_dsp_shim_read (struct sst_dsp*,int ) ;

__attribute__((used)) static bool skl_check_fw_status(struct sst_dsp *ctx, u32 status)
{
 u32 cur_sts;

 cur_sts = sst_dsp_shim_read(ctx, SKL_ADSP_FW_STATUS) & SKL_FW_STS_MASK;

 return (cur_sts == status);
}
