
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siu_stream {int xfer_cnt; int tasklet; scalar_t__ rw_flg; scalar_t__ cur_period; } ;
struct siu_port {struct siu_stream capture; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ RWF_STM_RD ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int siu_pcm_stmread_start(struct siu_port *port_info)
{
 struct siu_stream *siu_stream = &port_info->capture;

 if (siu_stream->xfer_cnt > 0x1000000)
  return -EINVAL;
 if (siu_stream->rw_flg)
  return -EPERM;


 siu_stream->cur_period = 0;


 siu_stream->rw_flg = RWF_STM_RD;

 tasklet_schedule(&siu_stream->tasklet);

 return 0;
}
