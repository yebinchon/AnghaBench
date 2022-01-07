
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {struct ca0132_spec* spec; } ;
struct dma_engine {TYPE_1__* dmab; int buf_size; int m_converter_format; struct hda_codec* codec; } ;
struct ca0132_spec {int dsp_stream_id; } ;
struct TYPE_3__ {scalar_t__ area; } ;


 int snd_hda_codec_load_dsp_cleanup (struct hda_codec*,TYPE_1__*) ;
 int snd_hda_codec_load_dsp_prepare (struct hda_codec*,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int dma_reset(struct dma_engine *dma)
{
 struct hda_codec *codec = dma->codec;
 struct ca0132_spec *spec = codec->spec;
 int status;

 if (dma->dmab->area)
  snd_hda_codec_load_dsp_cleanup(codec, dma->dmab);

 status = snd_hda_codec_load_dsp_prepare(codec,
   dma->m_converter_format,
   dma->buf_size,
   dma->dmab);
 if (status < 0)
  return status;
 spec->dsp_stream_id = status;
 return 0;
}
