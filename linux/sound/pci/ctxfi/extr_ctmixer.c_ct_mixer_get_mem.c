
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_mixer {struct ct_mixer* amixers; void* sums; } ;


 int CHN_NUM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NUM_CT_AMIXERS ;
 int NUM_CT_SUMS ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct ct_mixer*) ;
 struct ct_mixer* kzalloc (int,int ) ;

__attribute__((used)) static int ct_mixer_get_mem(struct ct_mixer **rmixer)
{
 struct ct_mixer *mixer;
 int err;

 *rmixer = ((void*)0);

 mixer = kzalloc(sizeof(*mixer), GFP_KERNEL);
 if (!mixer)
  return -ENOMEM;

 mixer->amixers = kcalloc(NUM_CT_AMIXERS * CHN_NUM, sizeof(void *),
     GFP_KERNEL);
 if (!mixer->amixers) {
  err = -ENOMEM;
  goto error1;
 }
 mixer->sums = kcalloc(NUM_CT_SUMS * CHN_NUM, sizeof(void *),
         GFP_KERNEL);
 if (!mixer->sums) {
  err = -ENOMEM;
  goto error2;
 }

 *rmixer = mixer;
 return 0;

error2:
 kfree(mixer->amixers);
error1:
 kfree(mixer);
 return err;
}
