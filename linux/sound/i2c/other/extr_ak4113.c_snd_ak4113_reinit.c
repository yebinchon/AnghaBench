
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {int work; int wq_processing; int reinit_mutex; } ;


 int HZ ;
 int ak4113_init_regs (struct ak4113*) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc_return (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;

void snd_ak4113_reinit(struct ak4113 *chip)
{
 if (atomic_inc_return(&chip->wq_processing) == 1)
  cancel_delayed_work_sync(&chip->work);
 mutex_lock(&chip->reinit_mutex);
 ak4113_init_regs(chip);
 mutex_unlock(&chip->reinit_mutex);

 if (atomic_dec_and_test(&chip->wq_processing))
  schedule_delayed_work(&chip->work, HZ / 10);
}
