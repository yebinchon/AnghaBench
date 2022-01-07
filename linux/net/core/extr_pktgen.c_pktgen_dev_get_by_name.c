
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_net {int net; } ;
struct pktgen_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int IFNAMSIZ ;
 struct net_device* dev_get_by_name (int ,char*) ;

__attribute__((used)) static struct net_device *pktgen_dev_get_by_name(const struct pktgen_net *pn,
       struct pktgen_dev *pkt_dev,
       const char *ifname)
{
 char b[IFNAMSIZ+5];
 int i;

 for (i = 0; ifname[i] != '@'; i++) {
  if (i == IFNAMSIZ)
   break;

  b[i] = ifname[i];
 }
 b[i] = 0;

 return dev_get_by_name(pn->net, b);
}
