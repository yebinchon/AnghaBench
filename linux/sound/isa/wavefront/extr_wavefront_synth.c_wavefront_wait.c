
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_wavefront_t ;


 int HZ ;
 int sleep_interval ;
 int sleep_tries ;
 int udelay (int) ;
 int wait_usecs ;
 scalar_t__ wavefront_sleep (int) ;
 int wavefront_status (int *) ;

__attribute__((used)) static int
wavefront_wait (snd_wavefront_t *dev, int mask)

{
 int i;





 for (i = 0; i < wait_usecs; i += 5) {
  if (wavefront_status (dev) & mask) {
   return 1;
  }
  udelay(5);
 }

 for (i = 0; i < sleep_tries; i++) {

  if (wavefront_status (dev) & mask) {
   return 1;
  }

  if (wavefront_sleep (HZ/sleep_interval)) {
   return (0);
  }
 }

 return (0);
}
