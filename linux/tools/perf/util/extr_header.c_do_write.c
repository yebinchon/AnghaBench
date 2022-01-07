
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {int buf; } ;


 int __do_write_buf (struct feat_fd*,void const*,size_t) ;
 int __do_write_fd (struct feat_fd*,void const*,size_t) ;

int do_write(struct feat_fd *ff, const void *buf, size_t size)
{
 if (!ff->buf)
  return __do_write_fd(ff, buf, size);
 return __do_write_buf(ff, buf, size);
}
