
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {TYPE_2__* asoc; } ;
typedef int __u32 ;
struct TYPE_3__ {int tsn_map; } ;
struct TYPE_4__ {TYPE_1__ peer; } ;


 int GFP_ATOMIC ;
 int sctp_tsnmap_skip (int *,int ) ;
 int sctp_ulpq_abort_pd (struct sctp_ulpq*,int ) ;
 int sctp_ulpq_reasm_flushtsn (struct sctp_ulpq*,int ) ;

__attribute__((used)) static void sctp_report_fwdtsn(struct sctp_ulpq *ulpq, __u32 ftsn)
{

 sctp_tsnmap_skip(&ulpq->asoc->peer.tsn_map, ftsn);

 sctp_ulpq_reasm_flushtsn(ulpq, ftsn);

 sctp_ulpq_abort_pd(ulpq, GFP_ATOMIC);
}
