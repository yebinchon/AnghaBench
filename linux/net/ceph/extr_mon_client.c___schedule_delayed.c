
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mon_client {unsigned long hunt_mult; int delayed_work; scalar_t__ hunting; } ;


 unsigned long CEPH_MONC_HUNT_INTERVAL ;
 unsigned long CEPH_MONC_PING_INTERVAL ;
 int dout (char*,unsigned long) ;
 int mod_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (unsigned long) ;
 int system_wq ;

__attribute__((used)) static void __schedule_delayed(struct ceph_mon_client *monc)
{
 unsigned long delay;

 if (monc->hunting)
  delay = CEPH_MONC_HUNT_INTERVAL * monc->hunt_mult;
 else
  delay = CEPH_MONC_PING_INTERVAL;

 dout("__schedule_delayed after %lu\n", delay);
 mod_delayed_work(system_wq, &monc->delayed_work,
    round_jiffies_relative(delay));
}
