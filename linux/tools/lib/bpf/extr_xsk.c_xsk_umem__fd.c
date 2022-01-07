
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_umem {int fd; } ;


 int EINVAL ;

int xsk_umem__fd(const struct xsk_umem *umem)
{
 return umem ? umem->fd : -EINVAL;
}
