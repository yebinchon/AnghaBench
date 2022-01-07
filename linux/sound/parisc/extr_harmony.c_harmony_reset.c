
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_harmony {int dummy; } ;


 int HARMONY_RESET ;
 int harmony_write (struct snd_harmony*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static inline void
harmony_reset(struct snd_harmony *h)
{
 harmony_write(h, HARMONY_RESET, 1);
 mdelay(50);
 harmony_write(h, HARMONY_RESET, 0);
}
