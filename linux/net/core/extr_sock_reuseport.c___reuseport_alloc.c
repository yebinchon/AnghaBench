
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_reuseport {unsigned int max_socks; int prog; } ;
struct sock {int dummy; } ;


 int GFP_ATOMIC ;
 int RCU_INIT_POINTER (int ,int *) ;
 struct sock_reuseport* kzalloc (unsigned int,int ) ;

__attribute__((used)) static struct sock_reuseport *__reuseport_alloc(unsigned int max_socks)
{
 unsigned int size = sizeof(struct sock_reuseport) +
        sizeof(struct sock *) * max_socks;
 struct sock_reuseport *reuse = kzalloc(size, GFP_ATOMIC);

 if (!reuse)
  return ((void*)0);

 reuse->max_socks = max_socks;

 RCU_INIT_POINTER(reuse->prog, ((void*)0));
 return reuse;
}
