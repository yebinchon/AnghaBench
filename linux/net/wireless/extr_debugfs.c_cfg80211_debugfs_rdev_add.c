
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* debugfsdir; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;


 int DEBUGFS_ADD (int ) ;
 int fragmentation_threshold ;
 int ht40allow_map ;
 int long_retry_limit ;
 int rts_threshold ;
 int short_retry_limit ;

void cfg80211_debugfs_rdev_add(struct cfg80211_registered_device *rdev)
{
 struct dentry *phyd = rdev->wiphy.debugfsdir;

 DEBUGFS_ADD(rts_threshold);
 DEBUGFS_ADD(fragmentation_threshold);
 DEBUGFS_ADD(short_retry_limit);
 DEBUGFS_ADD(long_retry_limit);
 DEBUGFS_ADD(ht40allow_map);
}
