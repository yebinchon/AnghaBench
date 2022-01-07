
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_runtime {int dummy; } ;
struct amdtp_stream {int dummy; } ;


 int amdtp_stream_add_pcm_hw_constraints (struct amdtp_stream*,struct snd_pcm_runtime*) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;

int amdtp_am824_add_pcm_hw_constraints(struct amdtp_stream *s,
           struct snd_pcm_runtime *runtime)
{
 int err;

 err = amdtp_stream_add_pcm_hw_constraints(s, runtime);
 if (err < 0)
  return err;


 return snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
}
