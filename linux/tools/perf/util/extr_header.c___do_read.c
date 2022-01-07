
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {int buf; } ;
typedef int ssize_t ;


 int __do_read_buf (struct feat_fd*,void*,int ) ;
 int __do_read_fd (struct feat_fd*,void*,int ) ;

__attribute__((used)) static int __do_read(struct feat_fd *ff, void *addr, ssize_t size)
{
 if (!ff->buf)
  return __do_read_fd(ff, addr, size);
 return __do_read_buf(ff, addr, size);
}
