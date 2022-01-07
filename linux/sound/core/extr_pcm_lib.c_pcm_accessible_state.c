
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_runtime {TYPE_1__* status; } ;
struct TYPE_2__ {int state; } ;


 int EBADFD ;
 int EPIPE ;
 int ESTRPIPE ;






__attribute__((used)) static int pcm_accessible_state(struct snd_pcm_runtime *runtime)
{
 switch (runtime->status->state) {
 case 131:
 case 130:
 case 132:
  return 0;
 case 128:
  return -EPIPE;
 case 129:
  return -ESTRPIPE;
 default:
  return -EBADFD;
 }
}
