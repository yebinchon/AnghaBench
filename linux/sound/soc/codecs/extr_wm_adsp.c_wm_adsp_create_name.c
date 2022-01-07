
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {char* fwf_name; scalar_t__ name; int dev; int num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ devm_kasprintf (int ,int ,char*,int ) ;
 char* devm_kstrdup (int ,scalar_t__,int ) ;
 char tolower (char) ;

__attribute__((used)) static int wm_adsp_create_name(struct wm_adsp *dsp)
{
 char *p;

 if (!dsp->name) {
  dsp->name = devm_kasprintf(dsp->dev, GFP_KERNEL, "DSP%d",
        dsp->num);
  if (!dsp->name)
   return -ENOMEM;
 }

 if (!dsp->fwf_name) {
  p = devm_kstrdup(dsp->dev, dsp->name, GFP_KERNEL);
  if (!p)
   return -ENOMEM;

  dsp->fwf_name = p;
  for (; *p != 0; ++p)
   *p = tolower(*p);
 }

 return 0;
}
