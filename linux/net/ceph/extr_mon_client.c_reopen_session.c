
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peer_addr; } ;
struct ceph_mon_client {TYPE_1__ con; int cur_mon; int hunting; } ;


 int __close_session (struct ceph_mon_client*) ;
 int __open_session (struct ceph_mon_client*) ;
 int ceph_pr_addr (int *) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static void reopen_session(struct ceph_mon_client *monc)
{
 if (!monc->hunting)
  pr_info("mon%d %s session lost, hunting for new mon\n",
      monc->cur_mon, ceph_pr_addr(&monc->con.peer_addr));

 __close_session(monc);
 __open_session(monc);
}
