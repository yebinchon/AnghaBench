
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

__attribute__((used)) static int src_put_rsc_ctrl_blk(void *blk)
{
 kfree(blk);

 return 0;
}
