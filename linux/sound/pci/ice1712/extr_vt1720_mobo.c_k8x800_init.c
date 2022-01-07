
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int vt1720; int num_total_dacs; int num_total_adcs; } ;



__attribute__((used)) static int k8x800_init(struct snd_ice1712 *ice)
{
 ice->vt1720 = 1;


 ice->num_total_dacs = 6;
 ice->num_total_adcs = 2;




 return 0;
}
