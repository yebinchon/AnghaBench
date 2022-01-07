
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isight {int pcm; int pcm_active; } ;


 scalar_t__ READ_ONCE (int ) ;
 int snd_pcm_stop_xrun (int ) ;

__attribute__((used)) static void isight_pcm_abort(struct isight *isight)
{
 if (READ_ONCE(isight->pcm_active))
  snd_pcm_stop_xrun(isight->pcm);
}
