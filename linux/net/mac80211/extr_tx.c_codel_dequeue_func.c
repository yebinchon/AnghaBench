
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fq_flow {int dummy; } ;
struct codel_vars {int dummy; } ;
struct TYPE_3__ {int vif; } ;
struct txq_info {struct fq_flow def_flow; struct codel_vars def_cvars; TYPE_1__ txq; } ;
struct sk_buff {int dummy; } ;
struct fq {struct fq_flow* flows; } ;
struct ieee80211_local {struct codel_vars* cvars; struct fq fq; } ;
struct TYPE_4__ {struct ieee80211_local* local; } ;


 struct sk_buff* fq_flow_dequeue (struct fq*,struct fq_flow*) ;
 TYPE_2__* vif_to_sdata (int ) ;

__attribute__((used)) static struct sk_buff *codel_dequeue_func(struct codel_vars *cvars,
       void *ctx)
{
 struct ieee80211_local *local;
 struct txq_info *txqi;
 struct fq *fq;
 struct fq_flow *flow;

 txqi = ctx;
 local = vif_to_sdata(txqi->txq.vif)->local;
 fq = &local->fq;

 if (cvars == &txqi->def_cvars)
  flow = &txqi->def_flow;
 else
  flow = &fq->flows[cvars - local->cvars];

 return fq_flow_dequeue(fq, flow);
}
