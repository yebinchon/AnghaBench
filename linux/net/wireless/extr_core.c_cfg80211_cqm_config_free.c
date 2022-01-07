
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int * cqm_config; } ;


 int kfree (int *) ;

void cfg80211_cqm_config_free(struct wireless_dev *wdev)
{
 kfree(wdev->cqm_config);
 wdev->cqm_config = ((void*)0);
}
