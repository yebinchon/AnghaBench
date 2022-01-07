
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_chan_callback {int dummy; } ;
struct sprd_mcdt_chan {int dummy; } ;


 int EINVAL ;

int sprd_mcdt_chan_int_enable(struct sprd_mcdt_chan *chan, u32 water_mark,
         struct sprd_mcdt_chan_callback *cb)
{
 return -EINVAL;
}
