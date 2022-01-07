
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_flow_data {scalar_t__ excess; TYPE_2__* sock; int old_pop; TYPE_1__* vcc; int block; int q; int list; scalar_t__ ref; } ;
struct atm_qdisc_data {struct atm_flow_data link; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int file; } ;
struct TYPE_3__ {int pop; } ;


 int file_count (int ) ;
 int kfree (struct atm_flow_data*) ;
 int list_del_init (int *) ;
 int pr_debug (char*,...) ;
 struct atm_qdisc_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_put (int ) ;
 int sockfd_put (TYPE_2__*) ;
 int tcf_block_put (int ) ;

__attribute__((used)) static void atm_tc_put(struct Qdisc *sch, unsigned long cl)
{
 struct atm_qdisc_data *p = qdisc_priv(sch);
 struct atm_flow_data *flow = (struct atm_flow_data *)cl;

 pr_debug("atm_tc_put(sch %p,[qdisc %p],flow %p)\n", sch, p, flow);
 if (--flow->ref)
  return;
 pr_debug("atm_tc_put: destroying\n");
 list_del_init(&flow->list);
 pr_debug("atm_tc_put: qdisc %p\n", flow->q);
 qdisc_put(flow->q);
 tcf_block_put(flow->block);
 if (flow->sock) {
  pr_debug("atm_tc_put: f_count %ld\n",
   file_count(flow->sock->file));
  flow->vcc->pop = flow->old_pop;
  sockfd_put(flow->sock);
 }
 if (flow->excess)
  atm_tc_put(sch, (unsigned long)flow->excess);
 if (flow != &p->link)
  kfree(flow);




}
