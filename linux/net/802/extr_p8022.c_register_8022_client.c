
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink_proto {unsigned char* type; int header_length; int sap; int request; } ;


 int GFP_ATOMIC ;
 int kfree (struct datalink_proto*) ;
 struct datalink_proto* kmalloc (int,int ) ;
 int llc_sap_open (unsigned char,int (*) (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*)) ;
 int p8022_request ;

struct datalink_proto *register_8022_client(unsigned char type,
         int (*func)(struct sk_buff *skb,
       struct net_device *dev,
       struct packet_type *pt,
       struct net_device *orig_dev))
{
 struct datalink_proto *proto;

 proto = kmalloc(sizeof(*proto), GFP_ATOMIC);
 if (proto) {
  proto->type[0] = type;
  proto->header_length = 3;
  proto->request = p8022_request;
  proto->sap = llc_sap_open(type, func);
  if (!proto->sap) {
   kfree(proto);
   proto = ((void*)0);
  }
 }
 return proto;
}
