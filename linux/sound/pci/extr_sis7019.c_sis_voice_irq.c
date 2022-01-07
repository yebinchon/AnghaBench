
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct voice {int dummy; } ;


 int __ffs (int) ;
 int sis_update_voice (struct voice*) ;

__attribute__((used)) static void sis_voice_irq(u32 status, struct voice *voice)
{
 int bit;

 while (status) {
  bit = __ffs(status);
  status >>= bit + 1;
  voice += bit;
  sis_update_voice(voice);
  voice++;
 }
}
