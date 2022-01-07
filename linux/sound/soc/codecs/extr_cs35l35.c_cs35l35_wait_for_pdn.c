
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ext_bst; } ;
struct cs35l35_private {int dev; int pdn_done; TYPE_1__ pdata; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;
 int usleep_range (int,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int cs35l35_wait_for_pdn(struct cs35l35_private *cs35l35)
{
 int ret;

 if (cs35l35->pdata.ext_bst) {
  usleep_range(5000, 5500);
  return 0;
 }

 reinit_completion(&cs35l35->pdn_done);

 ret = wait_for_completion_timeout(&cs35l35->pdn_done,
       msecs_to_jiffies(100));
 if (ret == 0) {
  dev_err(cs35l35->dev, "PDN_DONE did not complete\n");
  return -ETIMEDOUT;
 }

 return 0;
}
