
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cacc_saw_newack; scalar_t__ next_tsn_at_change; scalar_t__ cycling_changeover; scalar_t__ changeover_active; } ;
struct sctp_transport {TYPE_3__ cacc; scalar_t__ hb_sent; scalar_t__ rto_pending; scalar_t__ error_count; scalar_t__ flight_size; scalar_t__ partial_bytes_acked; scalar_t__ rttvar; scalar_t__ srtt; scalar_t__ rtt; int rto; int ssthresh; scalar_t__ burst_limited; int cwnd; struct sctp_association* asoc; } ;
struct TYPE_4__ {int a_rwnd; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
struct sctp_association {int pathmtu; int rto_initial; TYPE_2__ peer; } ;


 int __u32 ;
 int max_t (int ,int,int) ;
 int min (int,int ) ;
 int sctp_max_rto (struct sctp_association*,struct sctp_transport*) ;

void sctp_transport_reset(struct sctp_transport *t)
{
 struct sctp_association *asoc = t->asoc;






 t->cwnd = min(4*asoc->pathmtu, max_t(__u32, 2*asoc->pathmtu, 4380));
 t->burst_limited = 0;
 t->ssthresh = asoc->peer.i.a_rwnd;
 t->rto = asoc->rto_initial;
 sctp_max_rto(asoc, t);
 t->rtt = 0;
 t->srtt = 0;
 t->rttvar = 0;


 t->partial_bytes_acked = 0;
 t->flight_size = 0;
 t->error_count = 0;
 t->rto_pending = 0;
 t->hb_sent = 0;


 t->cacc.changeover_active = 0;
 t->cacc.cycling_changeover = 0;
 t->cacc.next_tsn_at_change = 0;
 t->cacc.cacc_saw_newack = 0;
}
