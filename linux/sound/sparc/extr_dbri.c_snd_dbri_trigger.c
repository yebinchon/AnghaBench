
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_dbri {int dummy; } ;
struct dbri_streaminfo {int pipe; } ;


 struct dbri_streaminfo* DBRI_STREAM (struct snd_dbri*,struct snd_pcm_substream*) ;
 int D_USR ;
 int EINVAL ;


 int dprintk (int ,char*,...) ;
 int reset_pipe (struct snd_dbri*,int ) ;
 scalar_t__ snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_dbri* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int xmit_descs (struct snd_dbri*) ;

__attribute__((used)) static int snd_dbri_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_dbri *dbri = snd_pcm_substream_chip(substream);
 struct dbri_streaminfo *info = DBRI_STREAM(dbri, substream);
 int ret = 0;

 switch (cmd) {
 case 129:
  dprintk(D_USR, "start audio, period is %d bytes\n",
   (int)snd_pcm_lib_period_bytes(substream));

  xmit_descs(dbri);
  break;
 case 128:
  dprintk(D_USR, "stop audio.\n");
  reset_pipe(dbri, info->pipe);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
