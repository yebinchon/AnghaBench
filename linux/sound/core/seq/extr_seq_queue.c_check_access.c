
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int owner; int klocked; int locked; } ;



__attribute__((used)) static inline int check_access(struct snd_seq_queue *q, int client)
{
 return (q->owner == client) || (!q->locked && !q->klocked);
}
