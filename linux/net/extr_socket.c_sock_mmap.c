
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct socket {TYPE_1__* ops; } ;
struct file {struct socket* private_data; } ;
struct TYPE_2__ {int (* mmap ) (struct file*,struct socket*,struct vm_area_struct*) ;} ;


 int stub1 (struct file*,struct socket*,struct vm_area_struct*) ;

__attribute__((used)) static int sock_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct socket *sock = file->private_data;

 return sock->ops->mmap(file, sock, vma);
}
