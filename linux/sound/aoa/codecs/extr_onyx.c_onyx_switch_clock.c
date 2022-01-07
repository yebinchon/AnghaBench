
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* gpio; } ;
struct onyx {int mutex; TYPE_2__ codec; } ;
struct codec_info_item {struct onyx* codec_data; } ;
typedef enum clock_switch { ____Placeholder_clock_switch } clock_switch ;
struct TYPE_7__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* all_amps_restore ) (TYPE_3__*) ;int (* all_amps_off ) (TYPE_3__*) ;} ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static int onyx_switch_clock(struct codec_info_item *cii,
        enum clock_switch what)
{
 struct onyx *onyx = cii->codec_data;

 mutex_lock(&onyx->mutex);

 switch (what) {
 case 129:
  onyx->codec.gpio->methods->all_amps_off(onyx->codec.gpio);
  break;
 case 128:
  onyx->codec.gpio->methods->all_amps_restore(onyx->codec.gpio);
  break;
 default:
  break;
 }
 mutex_unlock(&onyx->mutex);

 return 0;
}
