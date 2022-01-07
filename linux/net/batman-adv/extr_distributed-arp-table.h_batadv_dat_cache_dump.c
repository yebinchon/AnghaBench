
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int
batadv_dat_cache_dump(struct sk_buff *msg, struct netlink_callback *cb)
{
 return -EOPNOTSUPP;
}
