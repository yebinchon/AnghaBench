
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {scalar_t__ direction; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 scalar_t__ SND_COMPRESS_PLAYBACK ;

__attribute__((used)) static __poll_t snd_compr_get_poll(struct snd_compr_stream *stream)
{
 if (stream->direction == SND_COMPRESS_PLAYBACK)
  return EPOLLOUT | EPOLLWRNORM;
 else
  return EPOLLIN | EPOLLRDNORM;
}
