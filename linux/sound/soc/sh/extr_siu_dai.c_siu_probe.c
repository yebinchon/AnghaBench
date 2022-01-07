
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siu_info {void* reg; void* yram; void* xram; void* pram; int fw; int * dev; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; int name; } ;
struct firmware {int size; int data; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ PRAM_SIZE ;
 scalar_t__ REG_OFFSET ;
 scalar_t__ XRAM_OFFSET ;
 scalar_t__ XRAM_SIZE ;
 scalar_t__ YRAM_OFFSET ;
 scalar_t__ YRAM_SIZE ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct siu_info*) ;
 void* devm_ioremap (int *,scalar_t__,scalar_t__) ;
 struct siu_info* devm_kmalloc (int *,int,int ) ;
 struct resource* devm_request_mem_region (int *,scalar_t__,scalar_t__,int ) ;
 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int memcpy (int *,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 scalar_t__ resource_size (struct resource*) ;
 int siu_component ;
 int siu_i2s_dai ;
 struct siu_info* siu_i2s_data ;

__attribute__((used)) static int siu_probe(struct platform_device *pdev)
{
 const struct firmware *fw_entry;
 struct resource *res, *region;
 struct siu_info *info;
 int ret;

 info = devm_kmalloc(&pdev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 siu_i2s_data = info;
 info->dev = &pdev->dev;

 ret = request_firmware(&fw_entry, "siu_spb.bin", &pdev->dev);
 if (ret)
  return ret;





 memcpy(&info->fw, fw_entry->data, fw_entry->size);

 release_firmware(fw_entry);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 region = devm_request_mem_region(&pdev->dev, res->start,
      resource_size(res), pdev->name);
 if (!region) {
  dev_err(&pdev->dev, "SIU region already claimed\n");
  return -EBUSY;
 }

 info->pram = devm_ioremap(&pdev->dev, res->start, PRAM_SIZE);
 if (!info->pram)
  return -ENOMEM;
 info->xram = devm_ioremap(&pdev->dev, res->start + XRAM_OFFSET,
      XRAM_SIZE);
 if (!info->xram)
  return -ENOMEM;
 info->yram = devm_ioremap(&pdev->dev, res->start + YRAM_OFFSET,
      YRAM_SIZE);
 if (!info->yram)
  return -ENOMEM;
 info->reg = devm_ioremap(&pdev->dev, res->start + REG_OFFSET,
       resource_size(res) - REG_OFFSET);
 if (!info->reg)
  return -ENOMEM;

 dev_set_drvdata(&pdev->dev, info);


 ret = devm_snd_soc_register_component(&pdev->dev, &siu_component,
           &siu_i2s_dai, 1);
 if (ret < 0)
  return ret;

 pm_runtime_enable(&pdev->dev);

 return 0;
}
