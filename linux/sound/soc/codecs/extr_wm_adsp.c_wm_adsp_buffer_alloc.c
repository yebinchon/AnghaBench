
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_compr_buf {int list; struct wm_adsp* dsp; } ;
struct wm_adsp {int buffer_list; } ;


 int GFP_KERNEL ;
 struct wm_adsp_compr_buf* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int wm_adsp_buffer_clear (struct wm_adsp_compr_buf*) ;

__attribute__((used)) static struct wm_adsp_compr_buf *wm_adsp_buffer_alloc(struct wm_adsp *dsp)
{
 struct wm_adsp_compr_buf *buf;

 buf = kzalloc(sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return ((void*)0);

 buf->dsp = dsp;

 wm_adsp_buffer_clear(buf);

 list_add_tail(&buf->list, &dsp->buffer_list);

 return buf;
}
