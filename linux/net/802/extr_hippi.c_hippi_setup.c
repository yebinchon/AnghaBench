
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int min_mtu; int max_mtu; int tx_queue_len; scalar_t__ flags; int broadcast; int addr_len; int hard_header_len; int type; int * header_ops; } ;


 int ARPHRD_HIPPI ;
 int HIPPI_ALEN ;
 int HIPPI_HLEN ;
 int hippi_header_ops ;
 int memset (int ,int,int ) ;

__attribute__((used)) static void hippi_setup(struct net_device *dev)
{
 dev->header_ops = &hippi_header_ops;






 dev->type = ARPHRD_HIPPI;
 dev->hard_header_len = HIPPI_HLEN;
 dev->mtu = 65280;
 dev->min_mtu = 68;
 dev->max_mtu = 65280;
 dev->addr_len = HIPPI_ALEN;
 dev->tx_queue_len = 25 ;
 memset(dev->broadcast, 0xFF, HIPPI_ALEN);






 dev->flags = 0;
}
