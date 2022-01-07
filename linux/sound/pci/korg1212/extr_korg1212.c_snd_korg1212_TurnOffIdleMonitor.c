
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {scalar_t__ idleMonitorOn; } ;


 int snd_korg1212_SendStopAndWait (struct snd_korg1212*) ;

__attribute__((used)) static void snd_korg1212_TurnOffIdleMonitor(struct snd_korg1212 *korg1212)
{
        if (korg1212->idleMonitorOn) {
  snd_korg1212_SendStopAndWait(korg1212);
                korg1212->idleMonitorOn = 0;
        }
}
