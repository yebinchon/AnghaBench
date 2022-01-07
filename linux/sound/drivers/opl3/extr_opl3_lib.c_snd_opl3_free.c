
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {int res_r_port; int res_l_port; int (* private_free ) (struct snd_opl3*) ;} ;


 int ENXIO ;
 int kfree (struct snd_opl3*) ;
 int release_and_free_resource (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_opl3_clear_patches (struct snd_opl3*) ;
 int stub1 (struct snd_opl3*) ;

__attribute__((used)) static int snd_opl3_free(struct snd_opl3 *opl3)
{
 if (snd_BUG_ON(!opl3))
  return -ENXIO;
 if (opl3->private_free)
  opl3->private_free(opl3);
 snd_opl3_clear_patches(opl3);
 release_and_free_resource(opl3->res_l_port);
 release_and_free_resource(opl3->res_r_port);
 kfree(opl3);
 return 0;
}
