
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmfw_adsp1_sizes {int zm; int pm; int dm; } ;
struct wm_adsp {int dummy; } ;
struct firmware {int * data; } ;


 int adsp_dbg (struct wm_adsp*,char*,char const* const,int ,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static unsigned int wm_adsp1_parse_sizes(struct wm_adsp *dsp,
      const char * const file,
      unsigned int pos,
      const struct firmware *firmware)
{
 const struct wmfw_adsp1_sizes *adsp1_sizes;

 adsp1_sizes = (void *)&firmware->data[pos];

 adsp_dbg(dsp, "%s: %d DM, %d PM, %d ZM\n", file,
   le32_to_cpu(adsp1_sizes->dm), le32_to_cpu(adsp1_sizes->pm),
   le32_to_cpu(adsp1_sizes->zm));

 return pos + sizeof(*adsp1_sizes);
}
