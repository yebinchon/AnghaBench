
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_data {TYPE_1__* pdev; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENODEV ;
 int dev_err (int *,char*,...) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct stm32_sai_data* platform_get_drvdata (struct platform_device*) ;
 int put_device (int *) ;
 int stm32_sai_sync_conf_client (struct stm32_sai_data*,int) ;
 int stm32_sai_sync_conf_provider (struct stm32_sai_data*,int) ;

__attribute__((used)) static int stm32_sai_set_sync(struct stm32_sai_data *sai_client,
         struct device_node *np_provider,
         int synco, int synci)
{
 struct platform_device *pdev = of_find_device_by_node(np_provider);
 struct stm32_sai_data *sai_provider;
 int ret;

 if (!pdev) {
  dev_err(&sai_client->pdev->dev,
   "Device not found for node %pOFn\n", np_provider);
  of_node_put(np_provider);
  return -ENODEV;
 }

 sai_provider = platform_get_drvdata(pdev);
 if (!sai_provider) {
  dev_err(&sai_client->pdev->dev,
   "SAI sync provider data not found\n");
  ret = -EINVAL;
  goto error;
 }


 ret = stm32_sai_sync_conf_client(sai_client, synci);
 if (ret < 0)
  goto error;


 ret = stm32_sai_sync_conf_provider(sai_provider, synco);

error:
 put_device(&pdev->dev);
 of_node_put(np_provider);
 return ret;
}
