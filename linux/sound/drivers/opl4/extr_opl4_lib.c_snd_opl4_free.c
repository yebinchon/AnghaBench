
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int res_pcm_port; int res_fm_port; } ;


 int kfree (struct snd_opl4*) ;
 int release_and_free_resource (int ) ;
 int snd_opl4_free_proc (struct snd_opl4*) ;

__attribute__((used)) static void snd_opl4_free(struct snd_opl4 *opl4)
{
 snd_opl4_free_proc(opl4);
 release_and_free_resource(opl4->res_fm_port);
 release_and_free_resource(opl4->res_pcm_port);
 kfree(opl4);
}
