
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {unsigned int info_flags; int use_lock; } ;


 int ENOMEM ;
 struct snd_seq_queue* ERR_PTR (int ) ;
 int queue_delete (struct snd_seq_queue*) ;
 scalar_t__ queue_list_add (struct snd_seq_queue*) ;
 struct snd_seq_queue* queue_new (int,int) ;
 int queue_use (struct snd_seq_queue*,int,int) ;
 int snd_use_lock_free (int *) ;
 int snd_use_lock_use (int *) ;

struct snd_seq_queue *snd_seq_queue_alloc(int client, int locked, unsigned int info_flags)
{
 struct snd_seq_queue *q;

 q = queue_new(client, locked);
 if (q == ((void*)0))
  return ERR_PTR(-ENOMEM);
 q->info_flags = info_flags;
 queue_use(q, client, 1);
 snd_use_lock_use(&q->use_lock);
 if (queue_list_add(q) < 0) {
  snd_use_lock_free(&q->use_lock);
  queue_delete(q);
  return ERR_PTR(-ENOMEM);
 }
 return q;
}
