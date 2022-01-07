
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G2_FIFO ;
 int readl (int ) ;
 int snd_printk (char*) ;

__attribute__((used)) static void spu_write_wait(void)
{
 int time_count;
 time_count = 0;
 while (1) {
  if (!(readl(G2_FIFO) & 0x11))
   break;

  time_count++;
  if (time_count > 0x10000) {
   snd_printk
       ("WARNING: G2 FIFO appears to be blocked.\n");
   break;
  }
 }
}
