
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sysctl_igmp_qrv; int sysctl_igmp_llm_reports; } ;
struct net {TYPE_1__ ipv4; } ;
struct ip_mc_list {int loaded; scalar_t__ sfmode; int crcount; int lock; int unsolicit_count; int multiaddr; struct in_device* interface; } ;
struct in_device {scalar_t__ mr_qrv; scalar_t__ dead; int dev; } ;


 int IGMP_ALL_HOSTS ;
 int IGMP_INITIAL_REPORT_DELAY ;
 scalar_t__ IGMP_V1_SEEN (struct in_device*) ;
 scalar_t__ IGMP_V2_SEEN (struct in_device*) ;
 scalar_t__ MCAST_EXCLUDE ;
 struct net* dev_net (int ) ;
 int igmp_ifc_event (struct in_device*) ;
 int igmp_start_timer (struct ip_mc_list*,int ) ;
 int ip_mc_filter_add (struct in_device*,int ) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void igmp_group_added(struct ip_mc_list *im)
{
 struct in_device *in_dev = im->interface;




 if (im->loaded == 0) {
  im->loaded = 1;
  ip_mc_filter_add(in_dev, im->multiaddr);
 }
}
