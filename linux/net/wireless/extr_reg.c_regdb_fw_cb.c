
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int size; int data; } ;


 int EINVAL ;
 int ENODATA ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IS_ERR (void*) ;
 int kfree (void*) ;
 void* kmemdup (int ,int ,int ) ;
 int pr_info (char*) ;
 scalar_t__ query_regdb (void*) ;
 void* regdb ;
 int release_firmware (struct firmware const*) ;
 int restore_regulatory_settings (int,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int valid_regdb (int ,int ) ;

__attribute__((used)) static void regdb_fw_cb(const struct firmware *fw, void *context)
{
 int set_error = 0;
 bool restore = 1;
 void *db;

 if (!fw) {
  pr_info("failed to load regulatory.db\n");
  set_error = -ENODATA;
 } else if (!valid_regdb(fw->data, fw->size)) {
  pr_info("loaded regulatory.db is malformed or signature is missing/invalid\n");
  set_error = -EINVAL;
 }

 rtnl_lock();
 if (regdb && !IS_ERR(regdb)) {






 } else if (set_error) {
  regdb = ERR_PTR(set_error);
 } else if (fw) {
  db = kmemdup(fw->data, fw->size, GFP_KERNEL);
  if (db) {
   regdb = db;
   restore = context && query_regdb(context);
  } else {
   restore = 1;
  }
 }

 if (restore)
  restore_regulatory_settings(1, 0);

 rtnl_unlock();

 kfree(context);

 release_firmware(fw);
}
