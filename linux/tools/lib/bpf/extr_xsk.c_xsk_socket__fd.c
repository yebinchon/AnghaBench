
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_socket {int fd; } ;


 int EINVAL ;

int xsk_socket__fd(const struct xsk_socket *xsk)
{
 return xsk ? xsk->fd : -EINVAL;
}
