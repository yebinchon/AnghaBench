
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int BATADV_CNT_NUM ;
 int EOPNOTSUPP ;
 int ETH_SS_STATS ;

__attribute__((used)) static int batadv_get_sset_count(struct net_device *dev, int stringset)
{
 if (stringset == ETH_SS_STATS)
  return BATADV_CNT_NUM;

 return -EOPNOTSUPP;
}
