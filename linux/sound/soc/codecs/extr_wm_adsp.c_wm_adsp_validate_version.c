
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int dummy; } ;


 int adsp_warn (struct wm_adsp*,char*,unsigned int) ;

__attribute__((used)) static bool wm_adsp_validate_version(struct wm_adsp *dsp, unsigned int version)
{
 switch (version) {
 case 0:
  adsp_warn(dsp, "Deprecated file format %d\n", version);
  return 1;
 case 1:
 case 2:
  return 1;
 default:
  return 0;
 }
}
