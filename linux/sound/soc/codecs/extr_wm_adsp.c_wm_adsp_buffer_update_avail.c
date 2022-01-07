
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wm_adsp_compr_buf {int read_index; int avail; } ;


 int HOST_BUFFER_FIELD (int ) ;
 int WM_ADSP_DATA_WORD_SIZE ;
 int compr_dbg (struct wm_adsp_compr_buf*,char*,...) ;
 int sign_extend32 (int ,int) ;
 int wm_adsp_buffer_read (struct wm_adsp_compr_buf*,int ,int *) ;
 scalar_t__ wm_adsp_buffer_size (struct wm_adsp_compr_buf*) ;

__attribute__((used)) static int wm_adsp_buffer_update_avail(struct wm_adsp_compr_buf *buf)
{
 u32 next_read_index, next_write_index;
 int write_index, read_index, avail;
 int ret;


 if (buf->read_index < 0) {
  ret = wm_adsp_buffer_read(buf,
    HOST_BUFFER_FIELD(next_read_index),
    &next_read_index);
  if (ret < 0)
   return ret;

  read_index = sign_extend32(next_read_index, 23);

  if (read_index < 0) {
   compr_dbg(buf, "Avail check on unstarted stream\n");
   return 0;
  }

  buf->read_index = read_index;
 }

 ret = wm_adsp_buffer_read(buf, HOST_BUFFER_FIELD(next_write_index),
   &next_write_index);
 if (ret < 0)
  return ret;

 write_index = sign_extend32(next_write_index, 23);

 avail = write_index - buf->read_index;
 if (avail < 0)
  avail += wm_adsp_buffer_size(buf);

 compr_dbg(buf, "readindex=0x%x, writeindex=0x%x, avail=%d\n",
    buf->read_index, write_index, avail * WM_ADSP_DATA_WORD_SIZE);

 buf->avail = avail;

 return 0;
}
