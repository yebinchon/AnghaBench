
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_dai_stream {int * substream; } ;



__attribute__((used)) static void rsnd_dai_stream_quit(struct rsnd_dai_stream *io)
{
 io->substream = ((void*)0);
}
