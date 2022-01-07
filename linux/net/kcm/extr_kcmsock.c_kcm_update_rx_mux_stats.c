
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bytes; scalar_t__ msgs; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;
struct kcm_psock {TYPE_2__ strp; scalar_t__ saved_rx_bytes; scalar_t__ saved_rx_msgs; } ;
struct TYPE_6__ {int rx_msgs; int rx_bytes; } ;
struct kcm_mux {TYPE_3__ stats; } ;


 int STRP_STATS_ADD (int ,scalar_t__) ;

__attribute__((used)) static void kcm_update_rx_mux_stats(struct kcm_mux *mux,
        struct kcm_psock *psock)
{
 STRP_STATS_ADD(mux->stats.rx_bytes,
         psock->strp.stats.bytes -
         psock->saved_rx_bytes);
 mux->stats.rx_msgs +=
  psock->strp.stats.msgs - psock->saved_rx_msgs;
 psock->saved_rx_msgs = psock->strp.stats.msgs;
 psock->saved_rx_bytes = psock->strp.stats.bytes;
}
