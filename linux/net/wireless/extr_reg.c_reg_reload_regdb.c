
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firmware {int size; int data; } ;
struct TYPE_2__ {int dev; } ;


 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ERR_OR_NULL (void*) ;
 int kfree (void*) ;
 void* kmemdup (int ,int ,int ) ;
 TYPE_1__* reg_pdev ;
 void* regdb ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int valid_regdb (int ,int ) ;

int reg_reload_regdb(void)
{
 const struct firmware *fw;
 void *db;
 int err;

 err = request_firmware(&fw, "regulatory.db", &reg_pdev->dev);
 if (err)
  return err;

 if (!valid_regdb(fw->data, fw->size)) {
  err = -ENODATA;
  goto out;
 }

 db = kmemdup(fw->data, fw->size, GFP_KERNEL);
 if (!db) {
  err = -ENOMEM;
  goto out;
 }

 rtnl_lock();
 if (!IS_ERR_OR_NULL(regdb))
  kfree(regdb);
 regdb = db;
 rtnl_unlock();

 out:
 release_firmware(fw);
 return err;
}
