
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_bearer {int work; int bearer; TYPE_1__* ubsock; } ;
struct tipc_bearer {int media_ptr; } ;
struct TYPE_2__ {int sk; } ;


 int INIT_WORK (int *,int ) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SOCK_DEAD ;
 int cleanup_bearer ;
 int pr_err (char*) ;
 struct udp_bearer* rtnl_dereference (int ) ;
 int schedule_work (int *) ;
 int sock_set_flag (int ,int ) ;

__attribute__((used)) static void tipc_udp_disable(struct tipc_bearer *b)
{
 struct udp_bearer *ub;

 ub = rtnl_dereference(b->media_ptr);
 if (!ub) {
  pr_err("UDP bearer instance not found\n");
  return;
 }
 sock_set_flag(ub->ubsock->sk, SOCK_DEAD);
 RCU_INIT_POINTER(ub->bearer, ((void*)0));


 INIT_WORK(&ub->work, cleanup_bearer);
 schedule_work(&ub->work);
}
