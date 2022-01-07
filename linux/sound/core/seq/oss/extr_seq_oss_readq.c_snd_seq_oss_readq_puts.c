
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union evrec {int* c; } ;
struct seq_oss_readq {int dummy; } ;
typedef int rec ;


 int SEQ_MIDIPUTC ;
 int memset (union evrec*,int ,int) ;
 int snd_seq_oss_readq_put_event (struct seq_oss_readq*,union evrec*) ;

int
snd_seq_oss_readq_puts(struct seq_oss_readq *q, int dev, unsigned char *data, int len)
{
 union evrec rec;
 int result;

 memset(&rec, 0, sizeof(rec));
 rec.c[0] = SEQ_MIDIPUTC;
 rec.c[2] = dev;

 while (len-- > 0) {
  rec.c[1] = *data++;
  result = snd_seq_oss_readq_put_event(q, &rec);
  if (result < 0)
   return result;
 }
 return 0;
}
