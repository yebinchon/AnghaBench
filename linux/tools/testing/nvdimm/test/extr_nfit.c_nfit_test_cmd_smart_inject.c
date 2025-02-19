
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_intel_smart_threshold {int dummy; } ;
struct nd_intel_smart_inject {int flags; scalar_t__ status; scalar_t__ unsafe_shutdown_enable; scalar_t__ fatal_enable; int spares; scalar_t__ spare_enable; int media_temperature; scalar_t__ mtemp_enable; } ;
struct nd_intel_smart {int shutdown_state; int shutdown_count; int health; int spares; int media_temperature; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int spares; int media_temperature; } ;


 int EINVAL ;
 int ND_INTEL_SMART_FATAL_HEALTH ;
 int ND_INTEL_SMART_INJECT_FATAL ;
 int ND_INTEL_SMART_INJECT_MTEMP ;
 int ND_INTEL_SMART_INJECT_SHUTDOWN ;
 int ND_INTEL_SMART_INJECT_SPARE ;
 int ND_INTEL_SMART_NON_CRITICAL_HEALTH ;
 TYPE_1__ smart_def ;
 int smart_notify (struct device*,struct device*,struct nd_intel_smart*,struct nd_intel_smart_threshold*) ;

__attribute__((used)) static int nfit_test_cmd_smart_inject(
  struct nd_intel_smart_inject *inj,
  unsigned int buf_len,
  struct nd_intel_smart_threshold *thresh,
  struct nd_intel_smart *smart,
  struct device *bus_dev, struct device *dimm_dev)
{
 if (buf_len != sizeof(*inj))
  return -EINVAL;

 if (inj->flags & ND_INTEL_SMART_INJECT_MTEMP) {
  if (inj->mtemp_enable)
   smart->media_temperature = inj->media_temperature;
  else
   smart->media_temperature = smart_def.media_temperature;
 }
 if (inj->flags & ND_INTEL_SMART_INJECT_SPARE) {
  if (inj->spare_enable)
   smart->spares = inj->spares;
  else
   smart->spares = smart_def.spares;
 }
 if (inj->flags & ND_INTEL_SMART_INJECT_FATAL) {
  if (inj->fatal_enable)
   smart->health = ND_INTEL_SMART_FATAL_HEALTH;
  else
   smart->health = ND_INTEL_SMART_NON_CRITICAL_HEALTH;
 }
 if (inj->flags & ND_INTEL_SMART_INJECT_SHUTDOWN) {
  if (inj->unsafe_shutdown_enable) {
   smart->shutdown_state = 1;
   smart->shutdown_count++;
  } else
   smart->shutdown_state = 0;
 }
 inj->status = 0;
 smart_notify(bus_dev, dimm_dev, smart, thresh);

 return 0;
}
