
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_event {int flags; } ;
struct seq_oss_readq {int dummy; } ;
struct readq_sysex_ctx {int dev; struct seq_oss_readq* readq; } ;


 int SNDRV_SEQ_EVENT_LENGTH_MASK ;
 int SNDRV_SEQ_EVENT_LENGTH_VARIABLE ;
 int readq_dump_sysex ;
 int snd_seq_dump_var_event (struct snd_seq_event*,int ,struct readq_sysex_ctx*) ;

int snd_seq_oss_readq_sysex(struct seq_oss_readq *q, int dev,
       struct snd_seq_event *ev)
{
 struct readq_sysex_ctx ctx = {
  .readq = q,
  .dev = dev
 };

 if ((ev->flags & SNDRV_SEQ_EVENT_LENGTH_MASK) != SNDRV_SEQ_EVENT_LENGTH_VARIABLE)
  return 0;
 return snd_seq_dump_var_event(ev, readq_dump_sysex, &ctx);
}
