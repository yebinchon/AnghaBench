
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct splice_desc {int len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; int page; } ;


 int EFAULT ;
 int copy_page_to_iter (int ,int ,int,int ) ;

__attribute__((used)) static int pipe_to_user(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
   struct splice_desc *sd)
{
 int n = copy_page_to_iter(buf->page, buf->offset, sd->len, sd->u.data);
 return n == sd->len ? n : -EFAULT;
}
