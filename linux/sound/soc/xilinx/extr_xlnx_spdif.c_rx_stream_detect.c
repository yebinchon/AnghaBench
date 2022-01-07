
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdif_dev_data {int rx_chsts_updated; int chsts_q; } ;
struct snd_soc_dai {int dev; } ;


 int CH_STATUS_UPDATE_TIMEOUT ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 struct spdif_dev_data* dev_get_drvdata (int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int rx_stream_detect(struct snd_soc_dai *dai)
{
 int err;
 struct spdif_dev_data *ctx = dev_get_drvdata(dai->dev);
 unsigned long jiffies = msecs_to_jiffies(CH_STATUS_UPDATE_TIMEOUT);


 err = wait_event_interruptible_timeout(ctx->chsts_q,
            ctx->rx_chsts_updated,
            jiffies);
 if (!err) {
  dev_err(dai->dev, "No streaming audio detected!\n");
  return -EINVAL;
 }
 ctx->rx_chsts_updated = 0;

 return 0;
}
