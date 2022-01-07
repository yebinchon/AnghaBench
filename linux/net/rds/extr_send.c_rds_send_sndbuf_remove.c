
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rds_sock {scalar_t__ rs_snd_bytes; int rs_lock; } ;
struct TYPE_3__ {int h_len; } ;
struct TYPE_4__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_2__ m_inc; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 scalar_t__ be32_to_cpu (int ) ;
 int rds_stats_inc (int ) ;
 int s_send_queue_empty ;

__attribute__((used)) static void rds_send_sndbuf_remove(struct rds_sock *rs, struct rds_message *rm)
{
 u32 len = be32_to_cpu(rm->m_inc.i_hdr.h_len);

 assert_spin_locked(&rs->rs_lock);

 BUG_ON(rs->rs_snd_bytes < len);
 rs->rs_snd_bytes -= len;

 if (rs->rs_snd_bytes == 0)
  rds_stats_inc(s_send_queue_empty);
}
