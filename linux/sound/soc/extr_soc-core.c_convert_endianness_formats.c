
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_stream {int formats; } ;


 int ARRAY_SIZE (int*) ;
 int* endianness_format_map ;

__attribute__((used)) static void convert_endianness_formats(struct snd_soc_pcm_stream *stream)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(endianness_format_map); i++)
  if (stream->formats & endianness_format_map[i])
   stream->formats |= endianness_format_map[i];
}
