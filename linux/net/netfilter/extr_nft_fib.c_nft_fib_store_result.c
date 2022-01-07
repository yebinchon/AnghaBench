
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nft_fib {int result; int flags; } ;
struct net_device {int ifindex; char* name; } ;


 int IFNAMSIZ ;
 int NFTA_FIB_F_PRESENT ;


 int WARN_ON_ONCE (int) ;
 int strncpy (void*,char*,int ) ;

void nft_fib_store_result(void *reg, const struct nft_fib *priv,
     const struct net_device *dev)
{
 u32 *dreg = reg;
 int index;

 switch (priv->result) {
 case 129:
  index = dev ? dev->ifindex : 0;
  *dreg = (priv->flags & NFTA_FIB_F_PRESENT) ? !!index : index;
  break;
 case 128:
  if (priv->flags & NFTA_FIB_F_PRESENT)
   *dreg = !!dev;
  else
   strncpy(reg, dev ? dev->name : "", IFNAMSIZ);
  break;
 default:
  WARN_ON_ONCE(1);
  *dreg = 0;
  break;
 }
}
