
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_harmony {int dummy; } ;


 int HARMONY_DSTATUS ;
 int HARMONY_DSTATUS_IE ;
 int harmony_read (struct snd_harmony*,int ) ;
 int harmony_wait_for_control (struct snd_harmony*) ;
 int harmony_write (struct snd_harmony*,int ,int ) ;

__attribute__((used)) static void
harmony_disable_interrupts(struct snd_harmony *h)
{
 u32 dstatus;
 harmony_wait_for_control(h);
 dstatus = harmony_read(h, HARMONY_DSTATUS);
 dstatus &= ~HARMONY_DSTATUS_IE;
 harmony_write(h, HARMONY_DSTATUS, dstatus);
}
