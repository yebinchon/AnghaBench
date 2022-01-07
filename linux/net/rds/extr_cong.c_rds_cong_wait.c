
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int rs_lock; int rs_cong_mask; scalar_t__ rs_cong_monitor; } ;
struct rds_cong_map {int m_waitq; } ;
typedef int __be16 ;


 int ENOBUFS ;
 int RDS_CONG_MONITOR_MASK (int ) ;
 int be16_to_cpu (int ) ;
 int ntohs (int ) ;
 int rds_cong_test_bit (struct rds_cong_map*,int ) ;
 int rds_stats_inc (int ) ;
 int rdsdebug (char*,struct rds_cong_map*,int ) ;
 int s_cong_send_blocked ;
 int s_cong_send_error ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_interruptible (int ,int) ;

int rds_cong_wait(struct rds_cong_map *map, __be16 port, int nonblock,
    struct rds_sock *rs)
{
 if (!rds_cong_test_bit(map, port))
  return 0;
 if (nonblock) {
  if (rs && rs->rs_cong_monitor) {
   unsigned long flags;



   spin_lock_irqsave(&rs->rs_lock, flags);
   rs->rs_cong_mask |= RDS_CONG_MONITOR_MASK(ntohs(port));
   spin_unlock_irqrestore(&rs->rs_lock, flags);



   if (!rds_cong_test_bit(map, port))
    return 0;
  }
  rds_stats_inc(s_cong_send_error);
  return -ENOBUFS;
 }

 rds_stats_inc(s_cong_send_blocked);
 rdsdebug("waiting on map %p for port %u\n", map, be16_to_cpu(port));

 return wait_event_interruptible(map->m_waitq,
     !rds_cong_test_bit(map, port));
}
