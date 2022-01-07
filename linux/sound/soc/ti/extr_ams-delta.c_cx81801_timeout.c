
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int ams_delta_lock ;
 int ams_delta_muted ;
 scalar_t__ cx81801_cmd_pending ;
 int gpiod_modem_codec ;
 int gpiod_set_value (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cx81801_timeout(struct timer_list *unused)
{
 int muted;

 spin_lock(&ams_delta_lock);
 cx81801_cmd_pending = 0;
 muted = ams_delta_muted;
 spin_unlock(&ams_delta_lock);



 if (!muted)
  gpiod_set_value(gpiod_modem_codec, 0);
}
