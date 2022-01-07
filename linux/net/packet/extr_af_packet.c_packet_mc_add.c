
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct packet_sock {struct packet_mclist* mclist; } ;
struct packet_mreq_max {scalar_t__ mr_ifindex; scalar_t__ mr_alen; scalar_t__ mr_type; int mr_address; } ;
struct packet_mclist {scalar_t__ ifindex; scalar_t__ type; scalar_t__ alen; scalar_t__ addr; int count; struct packet_mclist* next; } ;
struct net_device {scalar_t__ addr_len; } ;


 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 struct net_device* __dev_get_by_index (int ,scalar_t__) ;
 int kfree (struct packet_mclist*) ;
 struct packet_mclist* kmalloc (int,int ) ;
 scalar_t__ memcmp (scalar_t__,int ,scalar_t__) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int packet_dev_mc (struct net_device*,struct packet_mclist*,int) ;
 struct packet_sock* pkt_sk (struct sock*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int packet_mc_add(struct sock *sk, struct packet_mreq_max *mreq)
{
 struct packet_sock *po = pkt_sk(sk);
 struct packet_mclist *ml, *i;
 struct net_device *dev;
 int err;

 rtnl_lock();

 err = -ENODEV;
 dev = __dev_get_by_index(sock_net(sk), mreq->mr_ifindex);
 if (!dev)
  goto done;

 err = -EINVAL;
 if (mreq->mr_alen > dev->addr_len)
  goto done;

 err = -ENOBUFS;
 i = kmalloc(sizeof(*i), GFP_KERNEL);
 if (i == ((void*)0))
  goto done;

 err = 0;
 for (ml = po->mclist; ml; ml = ml->next) {
  if (ml->ifindex == mreq->mr_ifindex &&
      ml->type == mreq->mr_type &&
      ml->alen == mreq->mr_alen &&
      memcmp(ml->addr, mreq->mr_address, ml->alen) == 0) {
   ml->count++;

   kfree(i);
   goto done;
  }
 }

 i->type = mreq->mr_type;
 i->ifindex = mreq->mr_ifindex;
 i->alen = mreq->mr_alen;
 memcpy(i->addr, mreq->mr_address, i->alen);
 memset(i->addr + i->alen, 0, sizeof(i->addr) - i->alen);
 i->count = 1;
 i->next = po->mclist;
 po->mclist = i;
 err = packet_dev_mc(dev, i, 1);
 if (err) {
  po->mclist = i->next;
  kfree(i);
 }

done:
 rtnl_unlock();
 return err;
}
