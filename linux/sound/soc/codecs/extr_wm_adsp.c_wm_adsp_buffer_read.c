
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wm_adsp_compr_buf {scalar_t__ host_buf_ptr; int host_buf_mem_type; int dsp; } ;


 int wm_adsp_read_data_word (int ,int ,scalar_t__,int *) ;

__attribute__((used)) static inline int wm_adsp_buffer_read(struct wm_adsp_compr_buf *buf,
          unsigned int field_offset, u32 *data)
{
 return wm_adsp_read_data_word(buf->dsp, buf->host_buf_mem_type,
          buf->host_buf_ptr + field_offset, data);
}
