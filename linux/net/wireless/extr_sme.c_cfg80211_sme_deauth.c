
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;


 int cfg80211_sme_free (struct wireless_dev*) ;

void cfg80211_sme_deauth(struct wireless_dev *wdev)
{
 cfg80211_sme_free(wdev);
}
