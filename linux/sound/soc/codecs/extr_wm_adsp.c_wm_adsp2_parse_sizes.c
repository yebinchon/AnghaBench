
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmfw_adsp2_sizes {int zm; int pm; int ym; int xm; } ;
struct wm_adsp {int dummy; } ;
struct firmware {int * data; } ;


 int adsp_dbg (struct wm_adsp*,char*,char const* const,int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int wm_adsp2_parse_sizes(struct wm_adsp *dsp,
      const char * const file,
      unsigned int pos,
      const struct firmware *firmware)
{
 const struct wmfw_adsp2_sizes *adsp2_sizes;

 adsp2_sizes = (void *)&firmware->data[pos];

 adsp_dbg(dsp, "%s: %d XM, %d YM %d PM, %d ZM\n", file,
   le32_to_cpu(adsp2_sizes->xm), le32_to_cpu(adsp2_sizes->ym),
   le32_to_cpu(adsp2_sizes->pm), le32_to_cpu(adsp2_sizes->zm));

 return pos + sizeof(*adsp2_sizes);
}
