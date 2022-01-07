
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int idleMonitorOn; int lock; } ;


 int INTERCOMMAND_DELAY ;
 int K1212_DB_SelectPlayMode ;
 int K1212_MODE_MonitorOn ;
 int snd_korg1212_Send1212Command (struct snd_korg1212*,int ,int ,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int ) ;

__attribute__((used)) static int snd_korg1212_TurnOnIdleMonitor(struct snd_korg1212 *korg1212)
{
 unsigned long flags;
 int rc;

        udelay(INTERCOMMAND_DELAY);
 spin_lock_irqsave(&korg1212->lock, flags);
        korg1212->idleMonitorOn = 1;
        rc = snd_korg1212_Send1212Command(korg1212, K1212_DB_SelectPlayMode,
       K1212_MODE_MonitorOn, 0, 0, 0);
        spin_unlock_irqrestore(&korg1212->lock, flags);
 return rc;
}
