
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb_csp {int running; int * csp_programs; } ;
struct snd_hwdep {struct snd_sb_csp* private_data; } ;


 int ARRAY_SIZE (int *) ;
 int SNDRV_SB_CSP_ST_RUNNING ;
 int kfree (struct snd_sb_csp*) ;
 int release_firmware (int ) ;
 int snd_sb_csp_stop (struct snd_sb_csp*) ;

__attribute__((used)) static void snd_sb_csp_free(struct snd_hwdep *hwdep)
{
 int i;
 struct snd_sb_csp *p = hwdep->private_data;
 if (p) {
  if (p->running & SNDRV_SB_CSP_ST_RUNNING)
   snd_sb_csp_stop(p);
  for (i = 0; i < ARRAY_SIZE(p->csp_programs); ++i)
   release_firmware(p->csp_programs[i]);
  kfree(p);
 }
}
