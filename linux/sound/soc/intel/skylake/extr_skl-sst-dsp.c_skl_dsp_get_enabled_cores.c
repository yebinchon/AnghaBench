
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct sst_dsp {int dev; struct skl_dev* thread_context; } ;
struct TYPE_2__ {int count; } ;
struct skl_dev {TYPE_1__ cores; } ;


 unsigned int SKL_ADSPCS_CPA_MASK (unsigned int) ;
 unsigned int SKL_ADSPCS_CPA_SHIFT ;
 unsigned int SKL_ADSPCS_CRST_MASK (unsigned int) ;
 unsigned int SKL_ADSPCS_CRST_SHIFT ;
 unsigned int SKL_ADSPCS_CSTALL_MASK (unsigned int) ;
 unsigned int SKL_ADSPCS_CSTALL_SHIFT ;
 int SKL_ADSP_REG_ADSPCS ;
 unsigned int SKL_DSP_CORES_MASK (int ) ;
 int dev_dbg (int ,char*,unsigned int) ;
 unsigned int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;

unsigned int skl_dsp_get_enabled_cores(struct sst_dsp *ctx)
{
 struct skl_dev *skl = ctx->thread_context;
 unsigned int core_mask, en_cores_mask;
 u32 val;

 core_mask = SKL_DSP_CORES_MASK(skl->cores.count);

 val = sst_dsp_shim_read_unlocked(ctx, SKL_ADSP_REG_ADSPCS);


 en_cores_mask = (val & SKL_ADSPCS_CPA_MASK(core_mask)) >>
   SKL_ADSPCS_CPA_SHIFT;


 en_cores_mask &= (~val & SKL_ADSPCS_CRST_MASK(core_mask)) >>
   SKL_ADSPCS_CRST_SHIFT;


 en_cores_mask &= (~val & SKL_ADSPCS_CSTALL_MASK(core_mask)) >>
   SKL_ADSPCS_CSTALL_SHIFT;
 en_cores_mask &= core_mask;

 dev_dbg(ctx->dev, "DSP enabled cores mask = %x\n", en_cores_mask);

 return en_cores_mask;
}
