
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long time; int cmd; int code; } ;
union evrec {unsigned long echo; TYPE_1__ t; } ;
struct seq_oss_readq {unsigned long input_time; } ;
typedef int rec ;


 int EV_TIMING ;
 unsigned long SEQ_WAIT ;


 int TMR_WAIT_ABS ;
 int memset (union evrec*,int ,int) ;
 int snd_seq_oss_readq_put_event (struct seq_oss_readq*,union evrec*) ;

int
snd_seq_oss_readq_put_timestamp(struct seq_oss_readq *q, unsigned long curt, int seq_mode)
{
 if (curt != q->input_time) {
  union evrec rec;
  memset(&rec, 0, sizeof(rec));
  switch (seq_mode) {
  case 128:
   rec.echo = (curt << 8) | SEQ_WAIT;
   snd_seq_oss_readq_put_event(q, &rec);
   break;
  case 129:
   rec.t.code = EV_TIMING;
   rec.t.cmd = TMR_WAIT_ABS;
   rec.t.time = curt;
   snd_seq_oss_readq_put_event(q, &rec);
   break;
  }
  q->input_time = curt;
 }
 return 0;
}
