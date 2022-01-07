
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct splice_desc {int len; TYPE_1__ u; int pos; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; int page; } ;
typedef int loff_t ;


 int __kernel_write (int ,void*,int ,int *) ;
 void* kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static int write_pipe_buf(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
     struct splice_desc *sd)
{
 int ret;
 void *data;
 loff_t tmp = sd->pos;

 data = kmap(buf->page);
 ret = __kernel_write(sd->u.file, data + buf->offset, sd->len, &tmp);
 kunmap(buf->page);

 return ret;
}
