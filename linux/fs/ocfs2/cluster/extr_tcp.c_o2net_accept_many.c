
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct socket {int dummy; } ;


 int cond_resched () ;
 int o2net_accept_one (struct socket*,int*) ;
 struct socket* o2net_listen_sock ;

__attribute__((used)) static void o2net_accept_many(struct work_struct *work)
{
 struct socket *sock = o2net_listen_sock;
 int more;
 int err;
 for (;;) {
  err = o2net_accept_one(sock, &more);
  if (!more)
   break;
  cond_resched();
 }
}
