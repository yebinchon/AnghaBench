
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct file* vm_file; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct file {struct socket* private_data; } ;
struct TYPE_2__ {int mapped; } ;


 int atomic_dec (int *) ;
 TYPE_1__* pkt_sk (struct sock*) ;

__attribute__((used)) static void packet_mm_close(struct vm_area_struct *vma)
{
 struct file *file = vma->vm_file;
 struct socket *sock = file->private_data;
 struct sock *sk = sock->sk;

 if (sk)
  atomic_dec(&pkt_sk(sk)->mapped);
}
