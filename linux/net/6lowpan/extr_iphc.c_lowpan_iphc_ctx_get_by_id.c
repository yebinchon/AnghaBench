
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct net_device {int dummy; } ;
struct lowpan_iphc_ctx {int dummy; } ;
struct TYPE_3__ {struct lowpan_iphc_ctx* table; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;


 TYPE_2__* lowpan_dev (struct net_device const*) ;
 int lowpan_iphc_ctx_is_active (struct lowpan_iphc_ctx*) ;

__attribute__((used)) static struct lowpan_iphc_ctx *
lowpan_iphc_ctx_get_by_id(const struct net_device *dev, u8 id)
{
 struct lowpan_iphc_ctx *ret = &lowpan_dev(dev)->ctx.table[id];

 if (!lowpan_iphc_ctx_is_active(ret))
  return ((void*)0);

 return ret;
}
