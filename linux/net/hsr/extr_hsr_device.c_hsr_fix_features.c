
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hsr_priv {int dummy; } ;
typedef int netdev_features_t ;


 int hsr_features_recompute (struct hsr_priv*,int ) ;
 struct hsr_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t hsr_fix_features(struct net_device *dev,
       netdev_features_t features)
{
 struct hsr_priv *hsr = netdev_priv(dev);

 return hsr_features_recompute(hsr, features);
}
