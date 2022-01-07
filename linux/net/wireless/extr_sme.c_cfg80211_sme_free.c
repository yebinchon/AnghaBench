
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* conn; } ;
struct TYPE_2__ {struct TYPE_2__* ie; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void cfg80211_sme_free(struct wireless_dev *wdev)
{
 if (!wdev->conn)
  return;

 kfree(wdev->conn->ie);
 kfree(wdev->conn);
 wdev->conn = ((void*)0);
}
