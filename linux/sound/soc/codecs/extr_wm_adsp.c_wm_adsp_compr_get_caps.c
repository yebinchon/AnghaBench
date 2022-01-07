
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wm_adsp_compr {TYPE_2__* dsp; } ;
struct snd_compr_stream {TYPE_1__* runtime; } ;
struct snd_compr_caps {int num_codecs; int max_fragments; int min_fragments; int max_fragment_size; int min_fragment_size; int direction; int * codecs; } ;
struct TYPE_8__ {int num_caps; int compr_direction; TYPE_3__* caps; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int fw; } ;
struct TYPE_5__ {struct wm_adsp_compr* private_data; } ;


 int WM_ADSP_MAX_FRAGMENTS ;
 int WM_ADSP_MAX_FRAGMENT_SIZE ;
 int WM_ADSP_MIN_FRAGMENTS ;
 int WM_ADSP_MIN_FRAGMENT_SIZE ;
 TYPE_4__* wm_adsp_fw ;

int wm_adsp_compr_get_caps(struct snd_compr_stream *stream,
      struct snd_compr_caps *caps)
{
 struct wm_adsp_compr *compr = stream->runtime->private_data;
 int fw = compr->dsp->fw;
 int i;

 if (wm_adsp_fw[fw].caps) {
  for (i = 0; i < wm_adsp_fw[fw].num_caps; i++)
   caps->codecs[i] = wm_adsp_fw[fw].caps[i].id;

  caps->num_codecs = i;
  caps->direction = wm_adsp_fw[fw].compr_direction;

  caps->min_fragment_size = WM_ADSP_MIN_FRAGMENT_SIZE;
  caps->max_fragment_size = WM_ADSP_MAX_FRAGMENT_SIZE;
  caps->min_fragments = WM_ADSP_MIN_FRAGMENTS;
  caps->max_fragments = WM_ADSP_MAX_FRAGMENTS;
 }

 return 0;
}
