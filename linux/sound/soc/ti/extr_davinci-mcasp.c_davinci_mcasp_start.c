
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct davinci_mcasp {int streams; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int mcasp_start_rx (struct davinci_mcasp*) ;
 int mcasp_start_tx (struct davinci_mcasp*) ;

__attribute__((used)) static void davinci_mcasp_start(struct davinci_mcasp *mcasp, int stream)
{
 mcasp->streams++;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK)
  mcasp_start_tx(mcasp);
 else
  mcasp_start_rx(mcasp);
}
