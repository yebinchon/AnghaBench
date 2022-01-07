
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {scalar_t__ data; TYPE_1__** bh; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int brelse (TYPE_1__*) ;
 int kfree (scalar_t__) ;
 scalar_t__ unlikely (int) ;

void hpfs_brelse4(struct quad_buffer_head *qbh)
{
 if (unlikely(qbh->data != qbh->bh[0]->b_data))
  kfree(qbh->data);
 brelse(qbh->bh[0]);
 brelse(qbh->bh[1]);
 brelse(qbh->bh[2]);
 brelse(qbh->bh[3]);
}
