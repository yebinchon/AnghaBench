
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ prev_hw_offset; } ;


 int rme9652_write (struct snd_rme9652*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void rme9652_reset_hw_pointer(struct snd_rme9652 *rme9652)
{
 int i;







 for (i = 0; i < 8; i++) {
  rme9652_write(rme9652, i * 4, 0);
  udelay(10);
 }
 rme9652->prev_hw_offset = 0;
}
