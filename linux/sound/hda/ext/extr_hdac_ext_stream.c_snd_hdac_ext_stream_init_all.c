
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hdac_ext_stream* kzalloc (int,int ) ;
 int snd_hdac_ext_stream_init (struct hdac_bus*,struct hdac_ext_stream*,int,int,int) ;

int snd_hdac_ext_stream_init_all(struct hdac_bus *bus, int start_idx,
  int num_stream, int dir)
{
 int stream_tag = 0;
 int i, tag, idx = start_idx;

 for (i = 0; i < num_stream; i++) {
  struct hdac_ext_stream *stream =
    kzalloc(sizeof(*stream), GFP_KERNEL);
  if (!stream)
   return -ENOMEM;
  tag = ++stream_tag;
  snd_hdac_ext_stream_init(bus, stream, idx, dir, tag);
  idx++;
 }

 return 0;

}
