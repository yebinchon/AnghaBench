
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_compr_buf {int irq_count; int read_index; scalar_t__ avail; } ;



__attribute__((used)) static void wm_adsp_buffer_clear(struct wm_adsp_compr_buf *buf)
{
 buf->irq_count = 0xFFFFFFFF;
 buf->read_index = -1;
 buf->avail = 0;
}
