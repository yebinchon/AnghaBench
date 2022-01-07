
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_block_cb {int refcnt; } ;



void flow_block_cb_incref(struct flow_block_cb *block_cb)
{
 block_cb->refcnt++;
}
