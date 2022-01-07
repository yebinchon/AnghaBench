
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_block_cb {unsigned int refcnt; } ;



unsigned int flow_block_cb_decref(struct flow_block_cb *block_cb)
{
 return --block_cb->refcnt;
}
