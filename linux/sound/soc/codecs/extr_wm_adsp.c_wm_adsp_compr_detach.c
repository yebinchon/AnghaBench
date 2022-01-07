
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm_adsp_compr {TYPE_1__* buf; scalar_t__ stream; } ;
struct TYPE_2__ {int * compr; } ;


 int snd_compr_fragment_elapsed (scalar_t__) ;
 scalar_t__ wm_adsp_compr_attached (struct wm_adsp_compr*) ;

__attribute__((used)) static void wm_adsp_compr_detach(struct wm_adsp_compr *compr)
{
 if (!compr)
  return;


 if (compr->stream)
  snd_compr_fragment_elapsed(compr->stream);

 if (wm_adsp_compr_attached(compr)) {
  compr->buf->compr = ((void*)0);
  compr->buf = ((void*)0);
 }
}
