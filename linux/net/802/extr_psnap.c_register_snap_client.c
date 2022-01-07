
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink_proto {int (* rcvfunc ) (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;int header_length; int node; int request; int type; } ;


 int GFP_ATOMIC ;
 scalar_t__ find_snap_client (unsigned char const*) ;
 struct datalink_proto* kmalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int memcpy (int ,unsigned char const*,int) ;
 int snap_list ;
 int snap_lock ;
 int snap_request ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct datalink_proto *register_snap_client(const unsigned char *desc,
         int (*rcvfunc)(struct sk_buff *,
          struct net_device *,
          struct packet_type *,
          struct net_device *))
{
 struct datalink_proto *proto = ((void*)0);

 spin_lock_bh(&snap_lock);

 if (find_snap_client(desc))
  goto out;

 proto = kmalloc(sizeof(*proto), GFP_ATOMIC);
 if (proto) {
  memcpy(proto->type, desc, 5);
  proto->rcvfunc = rcvfunc;
  proto->header_length = 5 + 3;
  proto->request = snap_request;
  list_add_rcu(&proto->node, &snap_list);
 }
out:
 spin_unlock_bh(&snap_lock);

 return proto;
}
