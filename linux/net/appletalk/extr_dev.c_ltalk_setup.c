
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int* broadcast; int flags; int addr_len; int mtu; int hard_header_len; int type; } ;


 int ARPHRD_LOCALTLK ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int LTALK_ALEN ;
 int LTALK_HLEN ;
 int LTALK_MTU ;

__attribute__((used)) static void ltalk_setup(struct net_device *dev)
{


 dev->type = ARPHRD_LOCALTLK;
 dev->hard_header_len = LTALK_HLEN;
 dev->mtu = LTALK_MTU;
 dev->addr_len = LTALK_ALEN;
 dev->tx_queue_len = 10;

 dev->broadcast[0] = 0xFF;

 dev->flags = IFF_BROADCAST|IFF_MULTICAST|IFF_NOARP;
}
