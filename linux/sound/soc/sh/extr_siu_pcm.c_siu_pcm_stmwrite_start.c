
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siu_stream {int tasklet; scalar_t__ rw_flg; scalar_t__ cur_period; } ;
struct siu_port {struct siu_stream playback; } ;


 int EPERM ;
 scalar_t__ RWF_STM_WT ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int siu_pcm_stmwrite_start(struct siu_port *port_info)
{
 struct siu_stream *siu_stream = &port_info->playback;

 if (siu_stream->rw_flg)
  return -EPERM;


 port_info->playback.cur_period = 0;


 siu_stream->rw_flg = RWF_STM_WT;


 tasklet_schedule(&siu_stream->tasklet);

 return 0;
}
