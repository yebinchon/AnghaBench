
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp {int dummy; } ;



__attribute__((used)) static bool wm_halo_validate_version(struct wm_adsp *dsp, unsigned int version)
{
 switch (version) {
 case 3:
  return 1;
 default:
  return 0;
 }
}
