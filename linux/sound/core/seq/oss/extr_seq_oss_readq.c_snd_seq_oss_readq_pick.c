
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union evrec {int dummy; } evrec ;
struct seq_oss_readq {scalar_t__ qlen; size_t head; int * q; } ;


 int EAGAIN ;
 int memcpy (union evrec*,int *,int) ;

int
snd_seq_oss_readq_pick(struct seq_oss_readq *q, union evrec *rec)
{
 if (q->qlen == 0)
  return -EAGAIN;
 memcpy(rec, &q->q[q->head], sizeof(*rec));
 return 0;
}
