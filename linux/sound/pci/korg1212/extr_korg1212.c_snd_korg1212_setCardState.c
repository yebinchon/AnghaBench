
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_korg1212 {int cardState; } ;
typedef enum CardState { ____Placeholder_CardState } CardState ;



__attribute__((used)) static inline void snd_korg1212_setCardState(struct snd_korg1212 * korg1212, enum CardState csState)
{
        korg1212->cardState = csState;
}
