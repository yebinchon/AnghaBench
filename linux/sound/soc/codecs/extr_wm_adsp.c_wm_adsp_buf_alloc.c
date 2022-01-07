
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_adsp_buf {int list; int buf; } ;
struct list_head {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct wm_adsp_buf*) ;
 struct wm_adsp_buf* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int ,void const*,size_t) ;
 int vmalloc (size_t) ;

__attribute__((used)) static struct wm_adsp_buf *wm_adsp_buf_alloc(const void *src, size_t len,
          struct list_head *list)
{
 struct wm_adsp_buf *buf = kzalloc(sizeof(*buf), GFP_KERNEL);

 if (buf == ((void*)0))
  return ((void*)0);

 buf->buf = vmalloc(len);
 if (!buf->buf) {
  kfree(buf);
  return ((void*)0);
 }
 memcpy(buf->buf, src, len);

 if (list)
  list_add_tail(&buf->list, list);

 return buf;
}
