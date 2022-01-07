
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int statusRegPtr; } ;


 int writel (int ,int ) ;

__attribute__((used)) static void snd_korg1212_DisableCardInterrupts(struct snd_korg1212 *korg1212)
{
 writel(0, korg1212->statusRegPtr);
}
