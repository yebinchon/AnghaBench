
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_stream {int substream; } ;
struct hdac_bus {int dummy; } ;


 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void skl_stream_update(struct hdac_bus *bus, struct hdac_stream *hstr)
{
 snd_pcm_period_elapsed(hstr->substream);
}
