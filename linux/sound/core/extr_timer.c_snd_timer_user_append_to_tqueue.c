
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_user {int qused; int queue_size; int qtail; int * tqueue; int overrun; } ;
struct snd_timer_tread {int dummy; } ;


 int memcpy (int *,struct snd_timer_tread*,int) ;

__attribute__((used)) static void snd_timer_user_append_to_tqueue(struct snd_timer_user *tu,
         struct snd_timer_tread *tread)
{
 if (tu->qused >= tu->queue_size) {
  tu->overrun++;
 } else {
  memcpy(&tu->tqueue[tu->qtail++], tread, sizeof(*tread));
  tu->qtail %= tu->queue_size;
  tu->qused++;
 }
}
