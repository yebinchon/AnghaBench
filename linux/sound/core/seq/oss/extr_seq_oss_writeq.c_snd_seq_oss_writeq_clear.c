
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_remove_events {int remove_mode; } ;
struct seq_oss_writeq {int dp; } ;
typedef int reset ;


 int SNDRV_SEQ_IOCTL_REMOVE_EVENTS ;
 int SNDRV_SEQ_REMOVE_OUTPUT ;
 int memset (struct snd_seq_remove_events*,int ,int) ;
 int snd_seq_oss_control (int ,int ,struct snd_seq_remove_events*) ;
 int snd_seq_oss_writeq_wakeup (struct seq_oss_writeq*,int ) ;

void
snd_seq_oss_writeq_clear(struct seq_oss_writeq *q)
{
 struct snd_seq_remove_events reset;

 memset(&reset, 0, sizeof(reset));
 reset.remove_mode = SNDRV_SEQ_REMOVE_OUTPUT;
 snd_seq_oss_control(q->dp, SNDRV_SEQ_IOCTL_REMOVE_EVENTS, &reset);


 snd_seq_oss_writeq_wakeup(q, 0);
}
