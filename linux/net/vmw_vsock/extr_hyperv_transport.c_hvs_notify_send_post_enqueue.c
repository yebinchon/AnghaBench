
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_transport_send_notify_data {int dummy; } ;
struct vsock_sock {int dummy; } ;
typedef int ssize_t ;



__attribute__((used)) static
int hvs_notify_send_post_enqueue(struct vsock_sock *vsk, ssize_t written,
     struct vsock_transport_send_notify_data *d)
{
 return 0;
}
