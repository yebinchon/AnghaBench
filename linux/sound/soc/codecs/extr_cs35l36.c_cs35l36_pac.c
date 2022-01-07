
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs35l36_private {scalar_t__ rev_id; int regmap; int dev; } ;


 unsigned int CS35L36_B0_PAC_PATCH ;
 int CS35L36_INT4_STATUS ;
 unsigned int CS35L36_MCU_CONFIG_CLR ;
 int CS35L36_PAC_CTL1 ;
 int CS35L36_PAC_CTL3 ;
 unsigned int CS35L36_PAC_ENABLE_MASK ;
 unsigned int CS35L36_PAC_MEM_ACCESS ;
 unsigned int CS35L36_PAC_MEM_ACCESS_CLR ;
 int CS35L36_PAC_PMEM_WORD0 ;
 unsigned int CS35L36_PAC_RESET ;
 scalar_t__ CS35L36_REV_B0 ;
 int CS35L36_TESTKEY_CTRL ;
 unsigned int CS35L36_TEST_LOCK1 ;
 unsigned int CS35L36_TEST_LOCK2 ;
 unsigned int CS35L36_TEST_UNLOCK1 ;
 unsigned int CS35L36_TEST_UNLOCK2 ;
 int EINVAL ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,unsigned int,int ) ;
 int regmap_write (int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int cs35l36_pac(struct cs35l36_private *cs35l36)
{
 int ret, count;
 unsigned int val;

 if (cs35l36->rev_id != CS35L36_REV_B0)
  return 0;




 regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
       CS35L36_TEST_UNLOCK1);
 regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
       CS35L36_TEST_UNLOCK2);

 usleep_range(9500, 10500);

 regmap_write(cs35l36->regmap, CS35L36_PAC_CTL1,
       CS35L36_PAC_RESET);
 regmap_write(cs35l36->regmap, CS35L36_PAC_CTL3,
       CS35L36_PAC_MEM_ACCESS);
 regmap_write(cs35l36->regmap, CS35L36_PAC_PMEM_WORD0,
       CS35L36_B0_PAC_PATCH);

 regmap_write(cs35l36->regmap, CS35L36_PAC_CTL3,
       CS35L36_PAC_MEM_ACCESS_CLR);
 regmap_write(cs35l36->regmap, CS35L36_PAC_CTL1,
       CS35L36_PAC_ENABLE_MASK);

 usleep_range(9500, 10500);

 ret = regmap_read(cs35l36->regmap, CS35L36_INT4_STATUS, &val);
 if (ret < 0) {
  dev_err(cs35l36->dev, "Failed to read int4_status %d\n", ret);
  return ret;
 }

 count = 0;
 while (!(val & CS35L36_MCU_CONFIG_CLR)) {
  usleep_range(100, 200);
  count++;

  ret = regmap_read(cs35l36->regmap, CS35L36_INT4_STATUS,
      &val);
  if (ret < 0) {
   dev_err(cs35l36->dev, "Failed to read int4_status %d\n",
    ret);
   return ret;
  }

  if (count >= 100)
   return -EINVAL;
 }

 regmap_write(cs35l36->regmap, CS35L36_INT4_STATUS,
       CS35L36_MCU_CONFIG_CLR);
 regmap_update_bits(cs35l36->regmap, CS35L36_PAC_CTL1,
      CS35L36_PAC_ENABLE_MASK, 0);

 regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
       CS35L36_TEST_LOCK1);
 regmap_write(cs35l36->regmap, CS35L36_TESTKEY_CTRL,
       CS35L36_TEST_LOCK2);

 return 0;
}
