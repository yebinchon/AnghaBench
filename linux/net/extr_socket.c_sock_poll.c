
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; int sk; } ;
struct file {struct socket* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int (* poll ) (struct file*,struct socket*,int *) ;} ;


 int POLL_BUSY_LOOP ;
 int poll_requested_events (int *) ;
 int sk_busy_loop (int ,int) ;
 scalar_t__ sk_can_busy_loop (int ) ;
 int stub1 (struct file*,struct socket*,int *) ;

__attribute__((used)) static __poll_t sock_poll(struct file *file, poll_table *wait)
{
 struct socket *sock = file->private_data;
 __poll_t events = poll_requested_events(wait), flag = 0;

 if (!sock->ops->poll)
  return 0;

 if (sk_can_busy_loop(sock->sk)) {

  if (events & POLL_BUSY_LOOP)
   sk_busy_loop(sock->sk, 1);


  flag = POLL_BUSY_LOOP;
 }

 return sock->ops->poll(file, sock, wait) | flag;
}
