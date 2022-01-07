
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_readq {scalar_t__ qlen; int head; int maxlen; } ;



void
snd_seq_oss_readq_free(struct seq_oss_readq *q)
{
 if (q->qlen > 0) {
  q->head = (q->head + 1) % q->maxlen;
  q->qlen--;
 }
}
