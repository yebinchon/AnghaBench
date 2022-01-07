
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cake_sched_data {int tin_mode; int tin_cnt; int rate_bps; int interval; scalar_t__ buffer_config_limit; scalar_t__ buffer_limit; TYPE_2__* tins; int rate_shft; int rate_ns; } ;
struct Qdisc {int limit; int flags; } ;
struct TYPE_3__ {int mtu_time; } ;
struct TYPE_4__ {int tin_rate_shft; int tin_rate_ns; TYPE_1__ cparams; } ;







 int CAKE_MAX_TINS ;
 int TCQ_F_CAN_BYPASS ;
 int USEC_PER_SEC ;
 int cake_clear_tin (struct Qdisc*,int) ;
 int cake_config_besteffort (struct Qdisc*) ;
 int cake_config_diffserv3 (struct Qdisc*) ;
 int cake_config_diffserv4 (struct Qdisc*) ;
 int cake_config_diffserv8 (struct Qdisc*) ;
 int cake_config_precedence (struct Qdisc*) ;
 int do_div (int,int) ;
 int max (int,scalar_t__) ;
 scalar_t__ max_t (int ,int,unsigned int) ;
 scalar_t__ min (scalar_t__,int ) ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct cake_sched_data* qdisc_priv (struct Qdisc*) ;
 int u32 ;

__attribute__((used)) static void cake_reconfigure(struct Qdisc *sch)
{
 struct cake_sched_data *q = qdisc_priv(sch);
 int c, ft;

 switch (q->tin_mode) {
 case 132:
  ft = cake_config_besteffort(sch);
  break;

 case 128:
  ft = cake_config_precedence(sch);
  break;

 case 129:
  ft = cake_config_diffserv8(sch);
  break;

 case 130:
  ft = cake_config_diffserv4(sch);
  break;

 case 131:
 default:
  ft = cake_config_diffserv3(sch);
  break;
 }

 for (c = q->tin_cnt; c < CAKE_MAX_TINS; c++) {
  cake_clear_tin(sch, c);
  q->tins[c].cparams.mtu_time = q->tins[ft].cparams.mtu_time;
 }

 q->rate_ns = q->tins[ft].tin_rate_ns;
 q->rate_shft = q->tins[ft].tin_rate_shft;

 if (q->buffer_config_limit) {
  q->buffer_limit = q->buffer_config_limit;
 } else if (q->rate_bps) {
  u64 t = q->rate_bps * q->interval;

  do_div(t, USEC_PER_SEC / 4);
  q->buffer_limit = max_t(u32, t, 4U << 20);
 } else {
  q->buffer_limit = ~0;
 }

 sch->flags &= ~TCQ_F_CAN_BYPASS;

 q->buffer_limit = min(q->buffer_limit,
         max(sch->limit * psched_mtu(qdisc_dev(sch)),
      q->buffer_config_limit));
}
