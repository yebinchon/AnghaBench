
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epoll_filefd {scalar_t__ file; int fd; } ;



__attribute__((used)) static inline int ep_cmp_ffd(struct epoll_filefd *p1,
        struct epoll_filefd *p2)
{
 return (p1->file > p2->file ? +1:
         (p1->file < p2->file ? -1 : p1->fd - p2->fd));
}
