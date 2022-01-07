
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_fw {scalar_t__ size; scalar_t__ dma_buf; struct sst_dsp* dsp; } ;
struct sst_dsp {int dev; } ;
struct sst_byt_fw_module_header {int mod_size; } ;
struct fw_header {scalar_t__ file_size; int modules; int file_format; int signature; } ;


 int EINVAL ;
 int SST_BYT_FW_SIGN ;
 int dev_dbg (int ,char*,int ,scalar_t__,int,int ,int) ;
 int dev_err (int ,char*,...) ;
 int sst_byt_parse_module (struct sst_dsp*,struct sst_fw*,struct sst_byt_fw_module_header*) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static int sst_byt_parse_fw_image(struct sst_fw *sst_fw)
{
 struct fw_header *header;
 struct sst_byt_fw_module_header *module;
 struct sst_dsp *dsp = sst_fw->dsp;
 int ret, count;


 header = (struct fw_header *)sst_fw->dma_buf;


 if ((strncmp(header->signature, SST_BYT_FW_SIGN, 4) != 0) ||
     (sst_fw->size != header->file_size + sizeof(*header))) {

  dev_err(dsp->dev, "Invalid FW sign/filesize mismatch\n");
  return -EINVAL;
 }

 dev_dbg(dsp->dev,
  "header sign=%4s size=0x%x modules=0x%x fmt=0x%x size=%zu\n",
  header->signature, header->file_size, header->modules,
  header->file_format, sizeof(*header));

 module = (void *)sst_fw->dma_buf + sizeof(*header);
 for (count = 0; count < header->modules; count++) {

  ret = sst_byt_parse_module(dsp, sst_fw, module);
  if (ret < 0) {
   dev_err(dsp->dev, "invalid module %d\n", count);
   return ret;
  }
  module = (void *)module + sizeof(*module) + module->mod_size;
 }

 return 0;
}
