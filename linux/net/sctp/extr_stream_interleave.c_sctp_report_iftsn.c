
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {TYPE_2__* asoc; } ;
typedef scalar_t__ __u32 ;
struct TYPE_3__ {int tsn_map; } ;
struct TYPE_4__ {TYPE_1__ peer; } ;


 int GFP_ATOMIC ;
 int sctp_intl_abort_pd (struct sctp_ulpq*,int ) ;
 int sctp_intl_reasm_flushtsn (struct sctp_ulpq*,scalar_t__) ;
 scalar_t__ sctp_tsnmap_get_max_tsn_seen (int *) ;
 int sctp_tsnmap_skip (int *,scalar_t__) ;

__attribute__((used)) static void sctp_report_iftsn(struct sctp_ulpq *ulpq, __u32 ftsn)
{

 sctp_tsnmap_skip(&ulpq->asoc->peer.tsn_map, ftsn);

 sctp_intl_reasm_flushtsn(ulpq, ftsn);

 if (ftsn == sctp_tsnmap_get_max_tsn_seen(&ulpq->asoc->peer.tsn_map))
  sctp_intl_abort_pd(ulpq, GFP_ATOMIC);
}
