
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ak4113 {int work; int wq_processing; } ;


 int atomic_inc (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int kfree (struct ak4113*) ;

__attribute__((used)) static void snd_ak4113_free(struct ak4113 *chip)
{
 atomic_inc(&chip->wq_processing);
 cancel_delayed_work_sync(&chip->work);
 kfree(chip);
}
