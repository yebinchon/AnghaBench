
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int ASSERT_RTNL () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 char* kmemdup (char const*,int,int ) ;
 int query_regdb (char const*) ;
 TYPE_1__* reg_pdev ;
 scalar_t__ regdb ;
 int regdb_fw_cb ;
 int request_firmware_nowait (int ,int,char*,int *,int ,void*,int ) ;

__attribute__((used)) static int query_regdb_file(const char *alpha2)
{
 ASSERT_RTNL();

 if (regdb)
  return query_regdb(alpha2);

 alpha2 = kmemdup(alpha2, 2, GFP_KERNEL);
 if (!alpha2)
  return -ENOMEM;

 return request_firmware_nowait(THIS_MODULE, 1, "regulatory.db",
           &reg_pdev->dev, GFP_KERNEL,
           (void *)alpha2, regdb_fw_cb);
}
