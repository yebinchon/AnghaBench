
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct ceph_connection {int peer_features; int last_keepalive_ack; } ;


 int CEPH_FEATURE_MSGR_KEEPALIVE2 ;
 int jiffies_to_timespec64 (unsigned long,struct timespec64*) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 struct timespec64 timespec64_add (int ,struct timespec64) ;
 scalar_t__ timespec64_compare (struct timespec64*,struct timespec64*) ;

bool ceph_con_keepalive_expired(struct ceph_connection *con,
          unsigned long interval)
{
 if (interval > 0 &&
     (con->peer_features & CEPH_FEATURE_MSGR_KEEPALIVE2)) {
  struct timespec64 now;
  struct timespec64 ts;
  ktime_get_real_ts64(&now);
  jiffies_to_timespec64(interval, &ts);
  ts = timespec64_add(con->last_keepalive_ack, ts);
  return timespec64_compare(&now, &ts) >= 0;
 }
 return 0;
}
