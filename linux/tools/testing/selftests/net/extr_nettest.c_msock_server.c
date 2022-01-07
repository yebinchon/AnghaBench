
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_args {int dummy; } ;


 int msock_init (struct sock_args*,int) ;

__attribute__((used)) static int msock_server(struct sock_args *args)
{
 return msock_init(args, 1);
}
