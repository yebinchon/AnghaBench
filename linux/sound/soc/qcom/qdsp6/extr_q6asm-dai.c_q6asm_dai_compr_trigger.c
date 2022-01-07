
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {int audio_client; int state; } ;


 int CMD_EOS ;
 int CMD_PAUSE ;
 int EINVAL ;
 int Q6ASM_STREAM_STOPPED ;






 int q6asm_cmd_nowait (int ,int ) ;
 int q6asm_run_nowait (int ,int ,int ,int ) ;

__attribute__((used)) static int q6asm_dai_compr_trigger(struct snd_compr_stream *stream, int cmd)
{
 struct snd_compr_runtime *runtime = stream->runtime;
 struct q6asm_dai_rtd *prtd = runtime->private_data;
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  ret = q6asm_run_nowait(prtd->audio_client, 0, 0, 0);
  break;
 case 129:
  prtd->state = Q6ASM_STREAM_STOPPED;
  ret = q6asm_cmd_nowait(prtd->audio_client, CMD_EOS);
  break;
 case 128:
 case 133:
  ret = q6asm_cmd_nowait(prtd->audio_client, CMD_PAUSE);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
