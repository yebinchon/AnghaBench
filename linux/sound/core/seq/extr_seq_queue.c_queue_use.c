
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_queue {int clients; int timer; int clients_bitmap; } ;


 int snd_seq_timer_close (struct snd_seq_queue*) ;
 int snd_seq_timer_defaults (int ) ;
 int snd_seq_timer_open (struct snd_seq_queue*) ;
 scalar_t__ test_and_clear_bit (int,int ) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static void queue_use(struct snd_seq_queue *queue, int client, int use)
{
 if (use) {
  if (!test_and_set_bit(client, queue->clients_bitmap))
   queue->clients++;
 } else {
  if (test_and_clear_bit(client, queue->clients_bitmap))
   queue->clients--;
 }
 if (queue->clients) {
  if (use && queue->clients == 1)
   snd_seq_timer_defaults(queue->timer);
  snd_seq_timer_open(queue);
 } else {
  snd_seq_timer_close(queue);
 }
}
