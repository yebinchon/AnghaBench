
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_physdev_info {int bitmask; int invert; int out_mask; int physoutdev; int in_mask; int physindev; } ;
struct xt_action_param {struct xt_physdev_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct net_device {char* name; } ;


 int XT_PHYSDEV_OP_BRIDGED ;
 int XT_PHYSDEV_OP_IN ;
 int XT_PHYSDEV_OP_ISIN ;
 int XT_PHYSDEV_OP_ISOUT ;
 int XT_PHYSDEV_OP_OUT ;
 unsigned long ifname_compare_aligned (char const*,int ,int ) ;
 struct net_device* nf_bridge_get_physindev (struct sk_buff const*) ;
 struct net_device* nf_bridge_get_physoutdev (struct sk_buff const*) ;
 int nf_bridge_info_exists (struct sk_buff const*) ;

__attribute__((used)) static bool
physdev_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_physdev_info *info = par->matchinfo;
 const struct net_device *physdev;
 unsigned long ret;
 const char *indev, *outdev;




 if (!nf_bridge_info_exists(skb)) {

  if ((info->bitmask & XT_PHYSDEV_OP_BRIDGED) &&
      !(info->invert & XT_PHYSDEV_OP_BRIDGED))
   return 0;
  if ((info->bitmask & XT_PHYSDEV_OP_ISIN) &&
      !(info->invert & XT_PHYSDEV_OP_ISIN))
   return 0;
  if ((info->bitmask & XT_PHYSDEV_OP_ISOUT) &&
      !(info->invert & XT_PHYSDEV_OP_ISOUT))
   return 0;
  if ((info->bitmask & XT_PHYSDEV_OP_IN) &&
      !(info->invert & XT_PHYSDEV_OP_IN))
   return 0;
  if ((info->bitmask & XT_PHYSDEV_OP_OUT) &&
      !(info->invert & XT_PHYSDEV_OP_OUT))
   return 0;
  return 1;
 }

 physdev = nf_bridge_get_physoutdev(skb);
 outdev = physdev ? physdev->name : ((void*)0);


 if ((info->bitmask & XT_PHYSDEV_OP_BRIDGED) &&
     (!!outdev ^ !(info->invert & XT_PHYSDEV_OP_BRIDGED)))
  return 0;

 physdev = nf_bridge_get_physindev(skb);
 indev = physdev ? physdev->name : ((void*)0);

 if ((info->bitmask & XT_PHYSDEV_OP_ISIN &&
     (!indev ^ !!(info->invert & XT_PHYSDEV_OP_ISIN))) ||
     (info->bitmask & XT_PHYSDEV_OP_ISOUT &&
     (!outdev ^ !!(info->invert & XT_PHYSDEV_OP_ISOUT))))
  return 0;

 if (!(info->bitmask & XT_PHYSDEV_OP_IN))
  goto match_outdev;

 if (indev) {
  ret = ifname_compare_aligned(indev, info->physindev,
          info->in_mask);

  if (!ret ^ !(info->invert & XT_PHYSDEV_OP_IN))
   return 0;
 }

match_outdev:
 if (!(info->bitmask & XT_PHYSDEV_OP_OUT))
  return 1;

 if (!outdev)
  return 0;

 ret = ifname_compare_aligned(outdev, info->physoutdev, info->out_mask);

 return (!!ret ^ !(info->invert & XT_PHYSDEV_OP_OUT));
}
