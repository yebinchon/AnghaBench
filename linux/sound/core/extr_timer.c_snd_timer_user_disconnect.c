
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int disconnected; int qchange_sleep; } ;
struct snd_timer_instance {struct snd_timer_user* callback_data; } ;


 int wake_up (int *) ;

__attribute__((used)) static void snd_timer_user_disconnect(struct snd_timer_instance *timeri)
{
 struct snd_timer_user *tu = timeri->callback_data;

 tu->disconnected = 1;
 wake_up(&tu->qchange_sleep);
}
