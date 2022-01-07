
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {struct portman* private_data; } ;
struct portman {struct pardevice* pardev; } ;
struct pardevice {int dummy; } ;


 int parport_release (struct pardevice*) ;
 int parport_unregister_device (struct pardevice*) ;
 int portman_free (struct portman*) ;

__attribute__((used)) static void snd_portman_card_private_free(struct snd_card *card)
{
 struct portman *pm = card->private_data;
 struct pardevice *pardev = pm->pardev;

 if (pardev) {
  parport_release(pardev);
  parport_unregister_device(pardev);
 }

 portman_free(pm);
}
