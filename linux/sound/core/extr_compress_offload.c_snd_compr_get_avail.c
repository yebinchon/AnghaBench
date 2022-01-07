
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_compr_stream {int dummy; } ;
struct snd_compr_avail {int dummy; } ;


 size_t snd_compr_calc_avail (struct snd_compr_stream*,struct snd_compr_avail*) ;

__attribute__((used)) static inline size_t snd_compr_get_avail(struct snd_compr_stream *stream)
{
 struct snd_compr_avail avail;

 return snd_compr_calc_avail(stream, &avail);
}
