
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {scalar_t__ playback_pid; scalar_t__ capture_pid; } ;



__attribute__((used)) static inline int snd_korg1212_use_is_exclusive(struct snd_korg1212 *korg1212)
{
 if (korg1212->playback_pid != korg1212->capture_pid &&
     korg1212->playback_pid >= 0 && korg1212->capture_pid >= 0)
  return 0;

 return 1;
}
