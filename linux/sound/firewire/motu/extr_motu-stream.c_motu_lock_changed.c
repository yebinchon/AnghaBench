
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_motu {int dev_lock_changed; int hwdep_wait; } ;


 int wake_up (int *) ;

__attribute__((used)) static void motu_lock_changed(struct snd_motu *motu)
{
 motu->dev_lock_changed = 1;
 wake_up(&motu->hwdep_wait);
}
