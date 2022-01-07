
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_fw_version {scalar_t__ abi_version; int time; int date; int build; int tag; int micro; int minor; int major; } ;
struct sof_ipc_fw_ready {int flags; struct sof_ipc_fw_version version; } ;
struct snd_sof_dev {int fw_version; int dev; struct sof_ipc_fw_ready fw_ready; } ;


 int CONFIG_SND_SOC_SOF_STRICT_ABI_CHECKS ;
 int EINVAL ;
 int IS_ENABLED (int ) ;
 char* SOF_ABI_MAJOR ;
 char* SOF_ABI_MINOR ;
 char* SOF_ABI_PATCH ;
 scalar_t__ SOF_ABI_VERSION ;
 scalar_t__ SOF_ABI_VERSION_INCOMPATIBLE (scalar_t__,scalar_t__) ;
 int SOF_ABI_VERSION_MAJOR (scalar_t__) ;
 int SOF_ABI_VERSION_MINOR (scalar_t__) ;
 int SOF_ABI_VERSION_PATCH (scalar_t__) ;
 int SOF_IPC_INFO_BUILD ;
 int SOF_IPC_INFO_GDB ;
 int SOF_IPC_INFO_LOCKS ;
 int SOF_IPC_INFO_LOCKSV ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ,int ,char*,...) ;
 int dev_warn (int ,char*) ;
 int memcpy (int *,struct sof_ipc_fw_version*,int) ;

int snd_sof_ipc_valid(struct snd_sof_dev *sdev)
{
 struct sof_ipc_fw_ready *ready = &sdev->fw_ready;
 struct sof_ipc_fw_version *v = &ready->version;

 dev_info(sdev->dev,
   "Firmware info: version %d:%d:%d-%s\n", v->major, v->minor,
   v->micro, v->tag);
 dev_info(sdev->dev,
   "Firmware: ABI %d:%d:%d Kernel ABI %d:%d:%d\n",
   SOF_ABI_VERSION_MAJOR(v->abi_version),
   SOF_ABI_VERSION_MINOR(v->abi_version),
   SOF_ABI_VERSION_PATCH(v->abi_version),
   SOF_ABI_MAJOR, SOF_ABI_MINOR, SOF_ABI_PATCH);

 if (SOF_ABI_VERSION_INCOMPATIBLE(SOF_ABI_VERSION, v->abi_version)) {
  dev_err(sdev->dev, "error: incompatible FW ABI version\n");
  return -EINVAL;
 }

 if (v->abi_version > SOF_ABI_VERSION) {
  if (!IS_ENABLED(CONFIG_SND_SOC_SOF_STRICT_ABI_CHECKS)) {
   dev_warn(sdev->dev, "warn: FW ABI is more recent than kernel\n");
  } else {
   dev_err(sdev->dev, "error: FW ABI is more recent than kernel\n");
   return -EINVAL;
  }
 }

 if (ready->flags & SOF_IPC_INFO_BUILD) {
  dev_info(sdev->dev,
    "Firmware debug build %d on %s-%s - options:\n"
    " GDB: %s\n"
    " lock debug: %s\n"
    " lock vdebug: %s\n",
    v->build, v->date, v->time,
    (ready->flags & SOF_IPC_INFO_GDB) ?
    "enabled" : "disabled",
    (ready->flags & SOF_IPC_INFO_LOCKS) ?
    "enabled" : "disabled",
    (ready->flags & SOF_IPC_INFO_LOCKSV) ?
    "enabled" : "disabled");
 }


 memcpy(&sdev->fw_version, v, sizeof(*v));

 return 0;
}
