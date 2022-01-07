
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct page {int dummy; } ;
struct file {int f_flags; struct socket* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int MSG_DONTWAIT ;
 int O_NONBLOCK ;
 int kernel_sendpage (struct socket*,struct page*,int,size_t,int) ;

__attribute__((used)) static ssize_t sock_sendpage(struct file *file, struct page *page,
        int offset, size_t size, loff_t *ppos, int more)
{
 struct socket *sock;
 int flags;

 sock = file->private_data;

 flags = (file->f_flags & O_NONBLOCK) ? MSG_DONTWAIT : 0;

 flags |= more;

 return kernel_sendpage(sock, page, offset, size, flags);
}
