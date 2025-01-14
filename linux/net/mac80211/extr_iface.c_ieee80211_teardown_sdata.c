
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; scalar_t__ fragment_next; TYPE_1__* fragments; } ;
struct TYPE_2__ {int skb_list; } ;


 int IEEE80211_FRAGMENT_MAX ;
 int __skb_queue_purge (int *) ;
 int ieee80211_debugfs_remove_netdev (struct ieee80211_sub_if_data*) ;
 int ieee80211_free_keys (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_mesh_teardown_sdata (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_vif_is_mesh (int *) ;

__attribute__((used)) static void ieee80211_teardown_sdata(struct ieee80211_sub_if_data *sdata)
{
 int i;


 ieee80211_free_keys(sdata, 0);

 ieee80211_debugfs_remove_netdev(sdata);

 for (i = 0; i < IEEE80211_FRAGMENT_MAX; i++)
  __skb_queue_purge(&sdata->fragments[i].skb_list);
 sdata->fragment_next = 0;

 if (ieee80211_vif_is_mesh(&sdata->vif))
  ieee80211_mesh_teardown_sdata(sdata);
}
