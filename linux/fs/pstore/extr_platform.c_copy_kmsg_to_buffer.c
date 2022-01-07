
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t bufsize; scalar_t__ buf; } ;


 scalar_t__ big_oops_buf ;
 int memcpy (scalar_t__,scalar_t__,size_t) ;
 TYPE_1__* psinfo ;

__attribute__((used)) static size_t copy_kmsg_to_buffer(int hsize, size_t len)
{
 size_t total_len;
 size_t diff;

 total_len = hsize + len;

 if (total_len > psinfo->bufsize) {
  diff = total_len - psinfo->bufsize + hsize;
  memcpy(psinfo->buf, big_oops_buf, hsize);
  memcpy(psinfo->buf + hsize, big_oops_buf + diff,
     psinfo->bufsize - hsize);
  total_len = psinfo->bufsize;
 } else
  memcpy(psinfo->buf, big_oops_buf, total_len);

 return total_len;
}
