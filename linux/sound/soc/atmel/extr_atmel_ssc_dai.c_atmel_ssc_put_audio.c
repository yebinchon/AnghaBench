
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssc_device {int dummy; } ;
struct TYPE_2__ {struct ssc_device* ssc; } ;


 int ssc_free (struct ssc_device*) ;
 TYPE_1__* ssc_info ;

void atmel_ssc_put_audio(int ssc_id)
{
 struct ssc_device *ssc = ssc_info[ssc_id].ssc;

 ssc_free(ssc);
}
