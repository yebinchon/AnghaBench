
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmadsp {int dev; } ;
struct sigma_fw_chunk {int tag; int length; } ;
struct sigma_firmware_header {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef int __le32 ;


 scalar_t__ ALIGN (unsigned int,int) ;
 int EINVAL ;



 int dev_warn (int ,char*,int ) ;
 int le32_to_cpu (int ) ;
 int sigma_fw_load_control (struct sigmadsp*,struct sigma_fw_chunk*,unsigned int) ;
 int sigma_fw_load_data (struct sigmadsp*,struct sigma_fw_chunk*,unsigned int) ;
 int sigma_fw_load_samplerates (struct sigmadsp*,struct sigma_fw_chunk*,unsigned int) ;

__attribute__((used)) static int sigmadsp_fw_load_v2(struct sigmadsp *sigmadsp,
 const struct firmware *fw)
{
 struct sigma_fw_chunk *chunk;
 unsigned int length, pos;
 int ret;





 if (fw->size < sizeof(*chunk) + sizeof(struct sigma_firmware_header))
  return 0;

 pos = sizeof(struct sigma_firmware_header);

 while (pos < fw->size - sizeof(*chunk)) {
  chunk = (struct sigma_fw_chunk *)(fw->data + pos);

  length = le32_to_cpu(chunk->length);

  if (length > fw->size - pos || length < sizeof(*chunk))
   return -EINVAL;

  switch (le32_to_cpu(chunk->tag)) {
  case 129:
   ret = sigma_fw_load_data(sigmadsp, chunk, length);
   break;
  case 130:
   ret = sigma_fw_load_control(sigmadsp, chunk, length);
   break;
  case 128:
   ret = sigma_fw_load_samplerates(sigmadsp, chunk, length);
   break;
  default:
   dev_warn(sigmadsp->dev, "Unknown chunk type: %d\n",
    chunk->tag);
   ret = 0;
   break;
  }

  if (ret)
   return ret;





  pos += ALIGN(length, sizeof(__le32));
 }

 return 0;
}
