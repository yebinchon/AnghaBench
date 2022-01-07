
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct caif_device_entry_list {int dummy; } ;
struct caif_net {struct caif_device_entry_list caifdevs; } ;


 int caif_net_id ;
 struct caif_net* net_generic (struct net*,int ) ;

__attribute__((used)) static struct caif_device_entry_list *caif_device_list(struct net *net)
{
 struct caif_net *caifn;
 caifn = net_generic(net, caif_net_id);
 return &caifn->caifdevs;
}
