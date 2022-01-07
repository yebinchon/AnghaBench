
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unix_address {int len; int name; } ;
struct sock {int dummy; } ;
struct msghdr {int msg_name; int msg_namelen; } ;
struct TYPE_2__ {int addr; } ;


 int memcpy (int ,int ,int ) ;
 struct unix_address* smp_load_acquire (int *) ;
 TYPE_1__* unix_sk (struct sock*) ;

__attribute__((used)) static void unix_copy_addr(struct msghdr *msg, struct sock *sk)
{
 struct unix_address *addr = smp_load_acquire(&unix_sk(sk)->addr);

 if (addr) {
  msg->msg_namelen = addr->len;
  memcpy(msg->msg_name, addr->name, addr->len);
 }
}
