
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array_saved; } ;
struct lola {TYPE_1__ mixer; } ;


 int vfree (int ) ;

void lola_free_mixer(struct lola *chip)
{
 vfree(chip->mixer.array_saved);
}
