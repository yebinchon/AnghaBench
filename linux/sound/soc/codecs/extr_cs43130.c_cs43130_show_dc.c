
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct cs43130_private {int * hpload_dc; int hpload_done; } ;


 int PAGE_SIZE ;
 struct cs43130_private* i2c_get_clientdata (struct i2c_client*) ;
 int scnprintf (char*,int ,char*,...) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int cs43130_show_dc(struct device *dev, char *buf, u8 ch)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct cs43130_private *cs43130 = i2c_get_clientdata(client);

 if (!cs43130->hpload_done)
  return scnprintf(buf, PAGE_SIZE, "NO_HPLOAD\n");
 else
  return scnprintf(buf, PAGE_SIZE, "%u\n",
     cs43130->hpload_dc[ch]);
}
