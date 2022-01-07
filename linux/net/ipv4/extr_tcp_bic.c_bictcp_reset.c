
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bictcp {int delayed_ack; scalar_t__ epoch_start; scalar_t__ last_time; scalar_t__ last_cwnd; scalar_t__ last_max_cwnd; scalar_t__ cnt; } ;


 int ACK_RATIO_SHIFT ;

__attribute__((used)) static inline void bictcp_reset(struct bictcp *ca)
{
 ca->cnt = 0;
 ca->last_max_cwnd = 0;
 ca->last_cwnd = 0;
 ca->last_time = 0;
 ca->epoch_start = 0;
 ca->delayed_ack = 2 << ACK_RATIO_SHIFT;
}
