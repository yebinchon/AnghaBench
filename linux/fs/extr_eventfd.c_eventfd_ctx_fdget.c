
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd {int file; } ;
struct eventfd_ctx {int dummy; } ;


 int EBADF ;
 struct eventfd_ctx* ERR_PTR (int ) ;
 struct eventfd_ctx* eventfd_ctx_fileget (int ) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;

struct eventfd_ctx *eventfd_ctx_fdget(int fd)
{
 struct eventfd_ctx *ctx;
 struct fd f = fdget(fd);
 if (!f.file)
  return ERR_PTR(-EBADF);
 ctx = eventfd_ctx_fileget(f.file);
 fdput(f);
 return ctx;
}
