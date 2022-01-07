
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct portman {struct pardevice* pardev; struct snd_card* card; int reg_lock; } ;
struct pardevice {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct portman* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int portman_create(struct snd_card *card,
     struct pardevice *pardev,
     struct portman **rchip)
{
 struct portman *pm;

 *rchip = ((void*)0);

 pm = kzalloc(sizeof(struct portman), GFP_KERNEL);
 if (pm == ((void*)0))
  return -ENOMEM;


 spin_lock_init(&pm->reg_lock);
 pm->card = card;
 pm->pardev = pardev;

 *rchip = pm;

 return 0;
}
