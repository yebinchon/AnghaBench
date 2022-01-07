
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_fw_header {scalar_t__ file_size; int abi; int num_modules; int sig; } ;
struct snd_sof_dev {int dev; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;


 int EINVAL ;
 int SND_SOF_FW_SIG ;
 int SND_SOF_FW_SIG_SIZE ;
 int dev_dbg (int ,char*,scalar_t__,int ,int ,int) ;
 int dev_err (int ,char*,...) ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static int check_header(struct snd_sof_dev *sdev, const struct firmware *fw)
{
 struct snd_sof_fw_header *header;


 header = (struct snd_sof_fw_header *)fw->data;


 if (strncmp(header->sig, SND_SOF_FW_SIG, SND_SOF_FW_SIG_SIZE) != 0) {
  dev_err(sdev->dev, "error: invalid firmware signature\n");
  return -EINVAL;
 }


 if (fw->size != header->file_size + sizeof(*header)) {
  dev_err(sdev->dev, "error: invalid filesize mismatch got 0x%zx expected 0x%zx\n",
   fw->size, header->file_size + sizeof(*header));
  return -EINVAL;
 }

 dev_dbg(sdev->dev, "header size=0x%x modules=0x%x abi=0x%x size=%zu\n",
  header->file_size, header->num_modules,
  header->abi, sizeof(*header));

 return 0;
}
