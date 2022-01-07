
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {int dummy; } ;


 int EAGAIN ;
 int __cld_pipe_upcall (struct rpc_pipe*,void*) ;

__attribute__((used)) static int
cld_pipe_upcall(struct rpc_pipe *pipe, void *cmsg)
{
 int ret;





 do {
  ret = __cld_pipe_upcall(pipe, cmsg);
 } while (ret == -EAGAIN);

 return ret;
}
