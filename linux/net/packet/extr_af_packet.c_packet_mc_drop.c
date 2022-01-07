
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct packet_mreq_max {scalar_t__ mr_ifindex; scalar_t__ mr_type; scalar_t__ mr_alen; int mr_address; } ;
struct packet_mclist {scalar_t__ ifindex; scalar_t__ type; scalar_t__ alen; scalar_t__ count; struct packet_mclist* next; int addr; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct packet_mclist* mclist; } ;


 struct net_device* __dev_get_by_index (int ,scalar_t__) ;
 int kfree (struct packet_mclist*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int packet_dev_mc (struct net_device*,struct packet_mclist*,int) ;
 TYPE_1__* pkt_sk (struct sock*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int packet_mc_drop(struct sock *sk, struct packet_mreq_max *mreq)
{
 struct packet_mclist *ml, **mlp;

 rtnl_lock();

 for (mlp = &pkt_sk(sk)->mclist; (ml = *mlp) != ((void*)0); mlp = &ml->next) {
  if (ml->ifindex == mreq->mr_ifindex &&
      ml->type == mreq->mr_type &&
      ml->alen == mreq->mr_alen &&
      memcmp(ml->addr, mreq->mr_address, ml->alen) == 0) {
   if (--ml->count == 0) {
    struct net_device *dev;
    *mlp = ml->next;
    dev = __dev_get_by_index(sock_net(sk), ml->ifindex);
    if (dev)
     packet_dev_mc(dev, ml, -1);
    kfree(ml);
   }
   break;
  }
 }
 rtnl_unlock();
 return 0;
}
