
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nid; } ;
struct lola {TYPE_2__* card; TYPE_1__ clock; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int LOLA_UNSOLICITED_ENABLE ;
 int LOLA_UNSOLICITED_TAG ;
 int LOLA_VERB_SET_UNSOLICITED_ENABLE ;
 int dev_warn (int ,char*,unsigned int) ;
 int lola_codec_read (struct lola*,int ,int ,int,int ,unsigned int*,int *) ;

int lola_enable_clock_events(struct lola *chip)
{
 unsigned int res;
 int err;

 err = lola_codec_read(chip, chip->clock.nid,
         LOLA_VERB_SET_UNSOLICITED_ENABLE,
         LOLA_UNSOLICITED_ENABLE | LOLA_UNSOLICITED_TAG,
         0, &res, ((void*)0));
 if (err < 0)
  return err;
 if (res) {
  dev_warn(chip->card->dev, "error in enable_clock_events %d\n",
         res);
  return -EINVAL;
 }
 return 0;
}
