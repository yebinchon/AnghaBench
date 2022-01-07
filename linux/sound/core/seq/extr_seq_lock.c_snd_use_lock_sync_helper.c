
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_use_lock_t ;


 int HZ ;
 scalar_t__ atomic_read (int *) ;
 int pr_warn (char*,scalar_t__,char const*,int) ;
 int schedule_timeout_uninterruptible (int) ;

void snd_use_lock_sync_helper(snd_use_lock_t *lockp, const char *file, int line)
{
 int warn_count = 5 * HZ;

 if (atomic_read(lockp) < 0) {
  pr_warn("ALSA: seq_lock: lock trouble [counter = %d] in %s:%d\n", atomic_read(lockp), file, line);
  return;
 }
 while (atomic_read(lockp) > 0) {
  if (warn_count-- == 0)
   pr_warn("ALSA: seq_lock: waiting [%d left] in %s:%d\n", atomic_read(lockp), file, line);
  schedule_timeout_uninterruptible(1);
 }
}
