
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dir; } ;
struct ieee80211_key {TYPE_1__ debugfs; } ;


 int debugfs_remove_recursive (int *) ;

void ieee80211_debugfs_key_remove(struct ieee80211_key *key)
{
 if (!key)
  return;

 debugfs_remove_recursive(key->debugfs.dir);
 key->debugfs.dir = ((void*)0);
}
