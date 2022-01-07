
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dev; } ;


 int ETIME ;
 int dev_dbg (int ,char*,int,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

int sst_dsp_register_poll(struct sst_dsp *ctx, u32 offset, u32 mask,
    u32 target, u32 time, char *operation)
{
 u32 reg;
 unsigned long timeout;
 int k = 0, s = 500;
 timeout = jiffies + msecs_to_jiffies(time);
 while ((((reg = sst_dsp_shim_read_unlocked(ctx, offset)) & mask) != target)
  && time_before(jiffies, timeout)) {
  k++;
  if (k > 10)
   s = 5000;

  usleep_range(s, 2*s);
 }

 if ((reg & mask) == target) {
  dev_dbg(ctx->dev, "FW Poll Status: reg=%#x %s successful\n",
     reg, operation);

  return 0;
 }

 dev_dbg(ctx->dev, "FW Poll Status: reg=%#x %s timedout\n",
     reg, operation);
 return -ETIME;
}
