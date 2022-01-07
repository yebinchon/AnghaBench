
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf {int fd; } ;



int btf__fd(const struct btf *btf)
{
 return btf->fd;
}
