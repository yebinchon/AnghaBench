
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feat_fd {scalar_t__ offset; scalar_t__ buf; scalar_t__ size; } ;
typedef scalar_t__ ssize_t ;


 int memcpy (void*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int __do_read_buf(struct feat_fd *ff, void *addr, ssize_t size)
{
 if (size > (ssize_t)ff->size - ff->offset)
  return -1;

 memcpy(addr, ff->buf + ff->offset, size);
 ff->offset += size;

 return 0;

}
