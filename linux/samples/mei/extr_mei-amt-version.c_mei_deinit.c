
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei {int fd; int initialized; scalar_t__ prot_ver; scalar_t__ buf_size; } ;


 int close (int) ;

__attribute__((used)) static void mei_deinit(struct mei *cl)
{
 if (cl->fd != -1)
  close(cl->fd);
 cl->fd = -1;
 cl->buf_size = 0;
 cl->prot_ver = 0;
 cl->initialized = 0;
}
