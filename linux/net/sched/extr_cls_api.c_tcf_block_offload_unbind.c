
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_block_ext_info {int dummy; } ;
struct tcf_block {int cb_lock; int nooffloaddevcnt; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct Qdisc {TYPE_2__* dev_queue; } ;
struct TYPE_4__ {struct net_device* dev; } ;
struct TYPE_3__ {int ndo_setup_tc; } ;


 int EOPNOTSUPP ;
 int FLOW_BLOCK_UNBIND ;
 int WARN_ON (int) ;
 int down_write (int *) ;
 int tc_indr_block_call (struct tcf_block*,struct net_device*,struct tcf_block_ext_info*,int ,int *) ;
 int tcf_block_offload_cmd (struct tcf_block*,struct net_device*,struct tcf_block_ext_info*,int ,int *) ;
 int up_write (int *) ;

__attribute__((used)) static void tcf_block_offload_unbind(struct tcf_block *block, struct Qdisc *q,
         struct tcf_block_ext_info *ei)
{
 struct net_device *dev = q->dev_queue->dev;
 int err;

 down_write(&block->cb_lock);
 tc_indr_block_call(block, dev, ei, FLOW_BLOCK_UNBIND, ((void*)0));

 if (!dev->netdev_ops->ndo_setup_tc)
  goto no_offload_dev_dec;
 err = tcf_block_offload_cmd(block, dev, ei, FLOW_BLOCK_UNBIND, ((void*)0));
 if (err == -EOPNOTSUPP)
  goto no_offload_dev_dec;
 up_write(&block->cb_lock);
 return;

no_offload_dev_dec:
 WARN_ON(block->nooffloaddevcnt-- == 0);
 up_write(&block->cb_lock);
}
