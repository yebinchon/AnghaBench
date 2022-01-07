
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola_stream {int index; scalar_t__ opened; struct lola_stream* master; } ;
struct lola_pcm {int num_streams; struct lola_stream* streams; } ;



__attribute__((used)) static void lola_cleanup_slave_streams(struct lola_pcm *pcm,
           struct lola_stream *str)
{
 int i;
 for (i = str->index + 1; i < pcm->num_streams; i++) {
  struct lola_stream *s = &pcm->streams[i];
  if (s->master != str)
   break;
  s->master = ((void*)0);
  s->opened = 0;
 }
}
