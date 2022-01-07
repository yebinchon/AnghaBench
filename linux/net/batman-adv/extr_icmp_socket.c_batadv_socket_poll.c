
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct batadv_socket_client* private_data; } ;
struct batadv_socket_client {scalar_t__ queue_len; int queue_wait; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t batadv_socket_poll(struct file *file, poll_table *wait)
{
 struct batadv_socket_client *socket_client = file->private_data;

 poll_wait(file, &socket_client->queue_wait, wait);

 if (socket_client->queue_len > 0)
  return EPOLLIN | EPOLLRDNORM;

 return 0;
}
