
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t w_pos; char** w; scalar_t__ avail; } ;
struct tomoyo_io_buffer {size_t read_user_buf_avail; TYPE_1__ r; scalar_t__ read_user_buf; scalar_t__ poll; } ;


 scalar_t__ copy_to_user (scalar_t__,char const*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool tomoyo_flush(struct tomoyo_io_buffer *head)
{
 while (head->r.w_pos) {
  const char *w = head->r.w[0];
  size_t len = strlen(w);

  if (len) {
   if (len > head->read_user_buf_avail)
    len = head->read_user_buf_avail;
   if (!len)
    return 0;
   if (copy_to_user(head->read_user_buf, w, len))
    return 0;
   head->read_user_buf_avail -= len;
   head->read_user_buf += len;
   w += len;
  }
  head->r.w[0] = w;
  if (*w)
   return 0;

  if (head->poll) {
   if (!head->read_user_buf_avail ||
       copy_to_user(head->read_user_buf, "", 1))
    return 0;
   head->read_user_buf_avail--;
   head->read_user_buf++;
  }
  head->r.w_pos--;
  for (len = 0; len < head->r.w_pos; len++)
   head->r.w[len] = head->r.w[len + 1];
 }
 head->r.avail = 0;
 return 1;
}
