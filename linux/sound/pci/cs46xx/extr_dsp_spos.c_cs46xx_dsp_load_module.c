
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct snd_cs46xx {TYPE_2__* card; struct dsp_spos_instance* dsp_spos_instance; } ;
struct TYPE_6__ {scalar_t__ offset; scalar_t__ data; } ;
struct dsp_spos_instance {int nmodules; struct dsp_module_desc* modules; TYPE_3__ code; } ;
struct dsp_segment_desc {scalar_t__ size; int offset; int data; } ;
struct TYPE_4__ {int symbols; } ;
struct dsp_module_desc {scalar_t__ load_address; int overlay_begin_address; int nfixups; TYPE_1__ symbol_table; int module_name; } ;
struct TYPE_5__ {int dev; } ;


 int DSP_CODE_BYTE_OFFSET ;
 scalar_t__ DSP_CODE_BYTE_SIZE ;
 int DSP_MAX_MODULES ;
 int DSP_PARAMETER_BYTE_OFFSET ;
 scalar_t__ DSP_PARAMETER_BYTE_SIZE ;
 int DSP_SAMPLE_BYTE_OFFSET ;
 scalar_t__ DSP_SAMPLE_BYTE_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int SEGTYPE_SP_PARAMETER ;
 int SEGTYPE_SP_PROGRAM ;
 int SEGTYPE_SP_SAMPLE ;
 scalar_t__ add_symbols (struct snd_cs46xx*,struct dsp_module_desc*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dsp_load_parameter (struct snd_cs46xx*,struct dsp_segment_desc*) ;
 int dsp_load_sample (struct snd_cs46xx*,struct dsp_segment_desc*) ;
 struct dsp_segment_desc* get_segment_desc (struct dsp_module_desc*,int ) ;
 int shadow_and_reallocate_code (struct snd_cs46xx*,int ,int,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_cs46xx_clear_BA1 (struct snd_cs46xx*,int,scalar_t__) ;
 scalar_t__ snd_cs46xx_download (struct snd_cs46xx*,scalar_t__,int,int) ;

int cs46xx_dsp_load_module (struct snd_cs46xx * chip, struct dsp_module_desc * module)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_segment_desc * code = get_segment_desc (module,SEGTYPE_SP_PROGRAM);
 u32 doffset, dsize;
 int err;

 if (ins->nmodules == DSP_MAX_MODULES - 1) {
  dev_err(chip->card->dev,
   "dsp_spos: to many modules loaded into DSP\n");
  return -ENOMEM;
 }

 dev_dbg(chip->card->dev,
  "dsp_spos: loading module %s into DSP\n", module->module_name);

 if (ins->nmodules == 0) {
  dev_dbg(chip->card->dev, "dsp_spos: clearing parameter area\n");
  snd_cs46xx_clear_BA1(chip, DSP_PARAMETER_BYTE_OFFSET, DSP_PARAMETER_BYTE_SIZE);
 }

 err = dsp_load_parameter(chip, get_segment_desc(module,
       SEGTYPE_SP_PARAMETER));
 if (err < 0)
  return err;

 if (ins->nmodules == 0) {
  dev_dbg(chip->card->dev, "dsp_spos: clearing sample area\n");
  snd_cs46xx_clear_BA1(chip, DSP_SAMPLE_BYTE_OFFSET, DSP_SAMPLE_BYTE_SIZE);
 }

 err = dsp_load_sample(chip, get_segment_desc(module,
           SEGTYPE_SP_SAMPLE));
 if (err < 0)
  return err;

 if (ins->nmodules == 0) {
  dev_dbg(chip->card->dev, "dsp_spos: clearing code area\n");
  snd_cs46xx_clear_BA1(chip, DSP_CODE_BYTE_OFFSET, DSP_CODE_BYTE_SIZE);
 }

 if (code == ((void*)0)) {
  dev_dbg(chip->card->dev,
   "dsp_spos: module got no code segment\n");
 } else {
  if (ins->code.offset + code->size > DSP_CODE_BYTE_SIZE) {
   dev_err(chip->card->dev,
    "dsp_spos: no space available in DSP\n");
   return -ENOMEM;
  }

  module->load_address = ins->code.offset;
  module->overlay_begin_address = 0x000;



  if (snd_BUG_ON(!module->symbol_table.symbols))
   return -ENOMEM;
  if (add_symbols(chip,module)) {
   dev_err(chip->card->dev,
    "dsp_spos: failed to load symbol table\n");
   return -ENOMEM;
  }

  doffset = (code->offset * 4 + ins->code.offset * 4 + DSP_CODE_BYTE_OFFSET);
  dsize = code->size * 4;
  dev_dbg(chip->card->dev,
   "dsp_spos: downloading code to chip (%08x-%08x)\n",
       doffset,doffset + dsize);

  module->nfixups = shadow_and_reallocate_code(chip,code->data,code->size,module->overlay_begin_address);

  if (snd_cs46xx_download (chip,(ins->code.data + ins->code.offset),doffset,dsize)) {
   dev_err(chip->card->dev,
    "dsp_spos: failed to download code to DSP\n");
   return -EINVAL;
  }

  ins->code.offset += code->size;
 }




 ins->modules[ins->nmodules] = *module;
 ins->nmodules++;

 return 0;
}
