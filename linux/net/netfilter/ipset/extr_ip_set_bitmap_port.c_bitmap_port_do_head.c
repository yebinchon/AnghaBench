
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct bitmap_port {int last_port; int first_port; } ;


 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PORT_TO ;
 int htons (int ) ;
 scalar_t__ nla_put_net16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline int
bitmap_port_do_head(struct sk_buff *skb, const struct bitmap_port *map)
{
 return nla_put_net16(skb, IPSET_ATTR_PORT, htons(map->first_port)) ||
        nla_put_net16(skb, IPSET_ATTR_PORT_TO, htons(map->last_port));
}
