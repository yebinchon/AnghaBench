
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssc_device {TYPE_1__* pdev; } ;
struct TYPE_4__ {struct ssc_device* ssc; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ IS_ERR (struct ssc_device*) ;
 int PTR_ERR (struct ssc_device*) ;
 int asoc_ssc_init (int *) ;
 int pr_err (char*,int) ;
 TYPE_2__* ssc_info ;
 struct ssc_device* ssc_request (int) ;

int atmel_ssc_set_audio(int ssc_id)
{
 struct ssc_device *ssc;
 int ret;


 ssc = ssc_request(ssc_id);
 if (IS_ERR(ssc)) {
  pr_err("Unable to parent ASoC SSC DAI on SSC: %ld\n",
   PTR_ERR(ssc));
  return PTR_ERR(ssc);
 } else {
  ssc_info[ssc_id].ssc = ssc;
 }

 ret = asoc_ssc_init(&ssc->pdev->dev);

 return ret;
}
