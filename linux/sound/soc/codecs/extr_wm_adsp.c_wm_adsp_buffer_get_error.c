
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_compr_buf {int error; } ;


 int EIO ;
 int HOST_BUFFER_FIELD (int ) ;
 int compr_err (struct wm_adsp_compr_buf*,char*,int) ;
 int error ;
 int wm_adsp_buffer_read (struct wm_adsp_compr_buf*,int ,int*) ;

__attribute__((used)) static int wm_adsp_buffer_get_error(struct wm_adsp_compr_buf *buf)
{
 int ret;

 ret = wm_adsp_buffer_read(buf, HOST_BUFFER_FIELD(error), &buf->error);
 if (ret < 0) {
  compr_err(buf, "Failed to check buffer error: %d\n", ret);
  return ret;
 }
 if (buf->error != 0) {
  compr_err(buf, "Buffer error occurred: %d\n", buf->error);
  return -EIO;
 }

 return 0;
}
