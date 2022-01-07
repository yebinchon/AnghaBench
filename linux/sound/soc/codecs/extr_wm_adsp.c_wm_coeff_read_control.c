
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_coeff_ctl {struct wm_adsp* dsp; } ;
struct wm_adsp {int regmap; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int adsp_dbg (struct wm_adsp*,char*,size_t,unsigned int) ;
 int adsp_err (struct wm_adsp*,char*,size_t,unsigned int,int) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int) ;
 int memcpy (void*,void*,size_t) ;
 int regmap_raw_read (int ,unsigned int,void*,size_t) ;
 int wm_coeff_base_reg (struct wm_coeff_ctl*,unsigned int*) ;

__attribute__((used)) static int wm_coeff_read_control(struct wm_coeff_ctl *ctl,
     void *buf, size_t len)
{
 struct wm_adsp *dsp = ctl->dsp;
 void *scratch;
 int ret;
 unsigned int reg;

 ret = wm_coeff_base_reg(ctl, &reg);
 if (ret)
  return ret;

 scratch = kmalloc(len, GFP_KERNEL | GFP_DMA);
 if (!scratch)
  return -ENOMEM;

 ret = regmap_raw_read(dsp->regmap, reg, scratch, len);
 if (ret) {
  adsp_err(dsp, "Failed to read %zu bytes from %x: %d\n",
    len, reg, ret);
  kfree(scratch);
  return ret;
 }
 adsp_dbg(dsp, "Read %zu bytes from %x\n", len, reg);

 memcpy(buf, scratch, len);
 kfree(scratch);

 return 0;
}
