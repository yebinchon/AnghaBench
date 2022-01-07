
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcf_proto {TYPE_3__* chain; } ;
struct tcf_block {int dummy; } ;
struct TYPE_5__ {int lastused; int pkts; int bytes; } ;
struct flow_cls_offload {unsigned long cookie; TYPE_2__ stats; int classid; int command; int common; } ;
struct TYPE_4__ {int classid; } ;
struct cls_fl_filter {int exts; TYPE_1__ res; int flags; } ;
struct TYPE_6__ {struct tcf_block* block; } ;


 int FLOW_CLS_STATS ;
 int TC_SETUP_CLSFLOWER ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,int *) ;
 int tc_setup_cb_call (struct tcf_block*,int ,struct flow_cls_offload*,int,int) ;
 int tcf_exts_stats_update (int *,int ,int ,int ) ;

__attribute__((used)) static void fl_hw_update_stats(struct tcf_proto *tp, struct cls_fl_filter *f,
          bool rtnl_held)
{
 struct tcf_block *block = tp->chain->block;
 struct flow_cls_offload cls_flower = {};

 tc_cls_common_offload_init(&cls_flower.common, tp, f->flags, ((void*)0));
 cls_flower.command = FLOW_CLS_STATS;
 cls_flower.cookie = (unsigned long) f;
 cls_flower.classid = f->res.classid;

 tc_setup_cb_call(block, TC_SETUP_CLSFLOWER, &cls_flower, 0,
    rtnl_held);

 tcf_exts_stats_update(&f->exts, cls_flower.stats.bytes,
         cls_flower.stats.pkts,
         cls_flower.stats.lastused);
}
