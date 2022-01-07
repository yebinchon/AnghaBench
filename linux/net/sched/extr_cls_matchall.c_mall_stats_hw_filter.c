
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_proto {TYPE_2__* chain; } ;
struct tcf_block {int dummy; } ;
struct TYPE_3__ {int lastused; int pkts; int bytes; } ;
struct tc_cls_matchall_offload {unsigned long cookie; TYPE_1__ stats; int command; int common; } ;
struct cls_mall_head {int exts; int flags; } ;
struct TYPE_4__ {struct tcf_block* block; } ;


 int TC_CLSMATCHALL_STATS ;
 int TC_SETUP_CLSMATCHALL ;
 int tc_cls_common_offload_init (int *,struct tcf_proto*,int ,int *) ;
 int tc_setup_cb_call (struct tcf_block*,int ,struct tc_cls_matchall_offload*,int,int) ;
 int tcf_exts_stats_update (int *,int ,int ,int ) ;

__attribute__((used)) static void mall_stats_hw_filter(struct tcf_proto *tp,
     struct cls_mall_head *head,
     unsigned long cookie)
{
 struct tc_cls_matchall_offload cls_mall = {};
 struct tcf_block *block = tp->chain->block;

 tc_cls_common_offload_init(&cls_mall.common, tp, head->flags, ((void*)0));
 cls_mall.command = TC_CLSMATCHALL_STATS;
 cls_mall.cookie = cookie;

 tc_setup_cb_call(block, TC_SETUP_CLSMATCHALL, &cls_mall, 0, 1);

 tcf_exts_stats_update(&head->exts, cls_mall.stats.bytes,
         cls_mall.stats.pkts, cls_mall.stats.lastused);
}
